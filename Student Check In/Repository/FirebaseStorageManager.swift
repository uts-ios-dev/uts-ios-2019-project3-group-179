//
//  FirebaseStorageManager.swift
//  Student Check In
//
//  Created by Don Loi on 26/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation
import Firebase

class FirebaseStorageManager {
    
    let storage = Storage.storage()
    
    var storageRef: StorageReference!
    
    init() {
        storageRef = storage.reference()
    }
    
    /// Uploads an image to firebase storage and notifies the file controller when upload is complete
    ///
    /// - Parameters:
    ///   - path: the path of the file to upload
    ///   - fileName: the desired name of the file uploaded
    func uploadImage(path: String, fileName: String, controller: FileViewController) {
        //Get an instance to the file from the path
        let imageToUpload = URL(string: path)!
        //Create a reference to the location we want to store this file
        let imageToUploadReference = storageRef.child(fileName)
        
        let uploadTask = imageToUploadReference.putFile(from: imageToUpload, metadata: nil, completion: { (metadata, error) in
            //Retrieve the download url after upload is complete
            imageToUploadReference.downloadURL(completion: { (downloadUrl, error) in
                guard let downloadUrl = downloadUrl else {
                    print("Something has gone terribly wrong...")
                    return
                }
                var file = File(fileName: fileName, referenceToFile: downloadUrl.absoluteString)
                FirebaseRepoManager().addFile(file: &file)
            })
        })
        controller.progressView.tintColor = .green
        uploadTask.observe(.progress, handler: { snapshot in
            let percentComplete = Double(snapshot.progress!.completedUnitCount)
                / Double(snapshot.progress!.totalUnitCount)
            controller.uploadProgressChanged(to: Float(percentComplete))
        })
        
        uploadTask.observe(.success, handler: { snapshot in
            controller.uploadProgressChanged(to: Float(0))
            print("Upload successful")
        })
    }
    
    /// Delete the image with the specified filename
    ///
    /// - Parameter filename: the name of the file to delete
    func deleteImage(filename: String) {
        let imageToDeleteReference = storageRef.child(filename)
        imageToDeleteReference.delete(completion: { error in
            if let error = error {
                
            }
        })
    }
    
    
    
    
}
