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
        let fileToUpload = URL(string: path)!
        //Create a reference to the location we want to store this file
        let fileToUploadReference = storageRef.child(fileName)
        
        fileToUploadReference.putFile(from: fileToUpload, metadata: nil, completion: { (metadata, error) in
            //Retrieve the download url after upload is complete
            fileToUploadReference.downloadURL(completion: { (downloadUrl, error) in
                guard let downloadUrl = downloadUrl else {
                    print("Something has gone terribly wrong...")
                    return
                }
                var file = File(fileName: fileName, referenceToFile: downloadUrl.absoluteString)
                FirebaseRepoManager().addFile(file: &file)
            })
        })
    }
    
    
    
    
}
