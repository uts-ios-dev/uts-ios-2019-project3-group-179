//
//  FileViewController.swift
//  Student Check In
//
//  Created by Don Loi on 26/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit
import MaterialComponents.MDCContainerScheme

class FileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UISearchBarDelegate {
    
    @IBOutlet weak var addPhotoButton: MDCFloatingButton!
    @IBOutlet weak var fileTableView: UITableView!
    @IBOutlet weak var fileSearchBar: UISearchBar!
    
    var imagePicker: UIImagePickerController!
    
    //Store the original set of files
    var files: [File] = []
    //Store the files to display on the tableview
    var filteredFiles: [File] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        FirebaseManager().attachFilesObserverTo(controller: self)
        fileSearchBar.delegate = self
        DispatchQueue.main.async {
            self.imagePicker = UIImagePickerController()
        }
    }
    
    @IBAction func addPhotoButtonTapped(_ sender: MDCButton) {
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
        } else {
            imagePicker.sourceType = .photoLibrary
        }
        
        present(imagePicker, animated: true, completion: nil)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredFiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let file = filteredFiles[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "fileCell", for: indexPath) as! FileTableViewCell
        let containerScheme = MDCContainerScheme()
        containerScheme.colorScheme.primaryColor = .red
        cell.fileDownloadButton.applyContainedTheme(withScheme: containerScheme)
        //Store the row as a tag so we know what to download
        cell.fileDownloadButton.tag = indexPath.row
        cell.fileDownloadButton.addTarget(self, action: #selector(downloadFile(sender:)), for: .touchUpInside)
        cell.fileNameLabel.text = file.fileName
        
        return cell
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        if let selectedImageUrl = info[UIImagePickerController.InfoKey.imageURL] as? URL {
            showNameDialog(selectedImageUrl: selectedImageUrl)
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterByCritera(searchText: searchText)
    }
    
    /// Adds a file to the original source of data and the filered source
    ///
    /// - Parameter file: the file to add to the sources
    func addFile(file: File) {
        files.append(file)
        filteredFiles.append(file)
    }
    
    /// Downloads a file based on the button pressed
    ///
    /// - Parameter sender: the UIButton that was pressed
    @objc func downloadFile(sender: UIButton) {
        let fileReference: String? = filteredFiles[sender.tag].referenceToFile
        if let url = fileReference {
            downloadImageFrom(url: url)
        }
    }
    
    /// Downloads the file from the provided url and
    ///
    /// - Parameters:
    ///   - url: the url to download the image from
    func downloadImageFrom(url: String) {
        if let dataUrl = URL(string: url) {
            let sessionConfig = URLSessionConfiguration.default
            let session = URLSession(configuration: sessionConfig)
            let request = URLRequest(url: dataUrl)
            
            let downloadTask = session.downloadTask(with: request, completionHandler: { (writenToURL, response, error) in
                if let writenToURL = writenToURL, error == nil {
                    do {
                        if let imageData = try UIImage(data: Data(contentsOf: writenToURL)) {
                            UIImageWriteToSavedPhotosAlbum(imageData, nil, nil, nil)
                        }
                    } catch {
                        //Add error handling here
                    }
                } else {
                    print("An error has occured...")
                }
            })
            downloadTask.resume()
        } else {
            //A file with the same name and extension alread yexists
        }
    }
    
    /// Prompts the user with an alert dialog, asking for a file name
    ///
    /// - Parameter selectedImageUrl: the url of the selected image
    func showNameDialog(selectedImageUrl: URL) {
        let inputFileNameController = UIAlertController(title: "Enter file name", message: "Please enter the desired name for the file", preferredStyle: .alert)
        let uploadAction = UIAlertAction(title: "Upload", style: .default, handler: {_ in
            //First text field is the name input
            if let fileName = inputFileNameController.textFields?[0].text {
                FirebaseStorageManager().uploadImage(path: selectedImageUrl.absoluteString, fileName: fileName, controller: self)
            }
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel , handler: nil)
        inputFileNameController.addAction(uploadAction)
        inputFileNameController.addAction(cancelAction)
        inputFileNameController.addTextField(configurationHandler: { textfield in
            textfield.placeholder = "Enter file name"
        })
        present(inputFileNameController, animated: true, completion: nil)
    }
    
    /// Filters the files tableview by the search text
    ///
    /// - Parameter searchText: the text to search
    func filterByCritera(searchText: String) {
        //Remove all the files from the list and prepare to filter
        filteredFiles.removeAll()
        if (!searchText.isEmpty) {
            for file in files {
                if isSearchTextInFileName(file: file, searchText: searchText) {
                    filteredFiles.append(file)
                }
            }
        } else {
            //Just set the filter back to the original source
            filteredFiles = files
        }
        fileTableView.reloadData()
    }
    
    /// Determines if the search text is contained in the file name, ignoring case sensitivity
    ///
    /// - Parameters:
    ///   - file: the file to check
    ///   - searchText: the search text to check if it is in the file name
    func isSearchTextInFileName(file: File, searchText: String) -> Bool {
        return file.fileName.lowercased().contains(searchText.lowercased())
    }
    
}
