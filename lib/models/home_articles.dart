class ArticlesModel{
  int id;
  String title;
  String author;
  String sourceName;
  String sourceUrl;
  String publishedDate;
  String createdAt;
  String updatedAt;

  ArticlesModel(Map<dynamic, dynamic> data){
    this.id = data['Id'] ?? 0;
    this.title = data['title'] ?? "not-available";
    this.author = data['author'] ?? "not-available";;
    this.sourceName = data['sourceName'] ?? "not-available";;
    this.sourceUrl = data['sourceUrl'] ?? "not-available";;
    this.publishedDate = data['publishedDate'] ?? "not-available";;
    this.createdAt = data['created_at'] ?? "not-available";;
    this.updatedAt = data['updated_at'] ?? "not-available";;
  }
}