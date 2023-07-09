class PersonModel {
    String? personName;
    String? number;

    PersonModel({
        this.personName,
        this.number,
    });

    factory PersonModel.fromJson(Map<String, dynamic> json) => PersonModel(
        personName: json["person name"],
        number: json["number"],
    );

    Map<String, dynamic> toJson() => {
        "person name": personName,
        "number": number,
    };
}
