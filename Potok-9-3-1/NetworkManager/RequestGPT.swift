//
//  RequestGPT.swift
//  Potok-9-3-1
//
//  Created by Doodesh on 10.01.2025.
//

import Foundation
import SDWebImage

class GPTManager {
    private let apiKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImY4NTQxNjQ4LWI5YjctNDEzYy1iMzI0LWQyOTNhZjJlNWQzZSIsImlzRGV2ZWxvcGVyIjp0cnVlLCJpYXQiOjE3MzU5ODk1ODgsImV4cCI6MjA1MTU2NTU4OH0.0jhJuzn0JbsqdRHgQd3FYQJ01_EgV3fbEVPCFBsPFCQ"
    private let urlTextCompletion = "https://bothub.chat/api/v2/openai/v1/chat/completions"
    private let urlImageGeneration = "https://api.openai.com/v1/images/generations"



    func sendTextRequest(prompt: String, completion: @escaping ([Choice]) -> Void) {
        guard let url = URL(string: urlTextCompletion) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")

        let bodyStruct = AIRequestBody(model: "gpt-4o", messages: [
            Message(role: "user", content: prompt)
        ])

        do {
            let body = try JSONEncoder().encode(bodyStruct)
            request.httpBody = body
        } catch {
            print("Failed to encode request body: \(error.localizedDescription)")
            return
        }

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil else { return }
            guard let data = data else { return }
            do {
                let results = try JSONDecoder().decode(APIResponse.self, from: data)
                completion(results.choices)
            } catch {
                print("Failed to decode response: \(error.localizedDescription)")
            }
        }.resume()
    }


    
    
    

    func generateImage(prompt: String, completion: @escaping (UIImage?) -> Void) {
        guard let url = URL(string: urlImageGeneration) else {
            print("Invalid URL")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")

        let bodyImageStruct = ImageGenerationRequeset(
            model: "dall-e-3",
            prompt: prompt,
            n: 1,
            size: "1024x1024"
        )

        do {
            let body = try JSONEncoder().encode(bodyImageStruct)
            request.httpBody = body
        } catch {
            print("Failed to encode request body: \(error.localizedDescription)")
            return
        }

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Request error: \(error.localizedDescription)")
                completion(nil)
                return
            }

            guard let data = data else {
                print("No data received")
                completion(nil)
                return
            }

            do {
                let response = try JSONDecoder().decode(ImageGenerationResponse.self, from: data)
                guard let imageUrlString = response.data.first?.url else {
                    print("Failed to get image URL from response")
                    completion(nil)
                    return
                }

                guard let imageUrl = URL(string: imageUrlString) else {
                    print("Invalid image URL")
                    completion(nil)
                    return
                }

                SDWebImageDownloader.shared.downloadImage(with: imageUrl) { image, data, error, finished in
                    if let error = error {
                        print("Error downloading image: \(error.localizedDescription)")
                        completion(nil)
                        return
                    }

                    guard let image = image else {
                        print("Failed to load image")
                        completion(nil)
                        return
                    }

                    completion(image)
                }
            } catch {
                print("Failed to decode response: \(error.localizedDescription)")
                completion(nil)
            }
        }.resume()
    }
}


