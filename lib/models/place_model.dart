class PlaceModel {
    String? placeName;
    String? longitude;
    String? state;
    String? stateAbbreviation;
    String? latitude;

    PlaceModel({
        this.placeName,
        this.longitude,
        this.state,
        this.stateAbbreviation,
        this.latitude,
    });

    factory PlaceModel.fromJson(Map<String, dynamic> json) => PlaceModel(
        placeName: json["place name"],
        longitude: json["longitude"],
        state: json["state"],
        stateAbbreviation: json["state abbreviation"],
        latitude: json["latitude"],
    );

    Map<String, dynamic> toJson() => {
        "place name": placeName,
        "longitude": longitude,
        "state": state,
        "state abbreviation": stateAbbreviation,
        "latitude": latitude,
    };
}
