struct SelectedTrackCriteria {
    let type: String
    let value: Any?
    
    let json: NSDictionary?
    
    init(_ json: NSDictionary!) {
        guard json != nil else {
            self.json = nil
            self.type = ""
            self.value = nil
            return
        }
        self.json = json
        self.type = json["selectedAudioType"] as? String ?? json["selectedTextType"] as? String ?? ""
        self.value = json["value"]
    }
}
