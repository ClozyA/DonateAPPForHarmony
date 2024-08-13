export default class Category {
  icon: Resource;
  mytxt: string;
  recommend: number;
  author: string;

  constructor(icon: Resource, mytxt: string, recommend: number, author: string) {
    this.icon = icon;
    this.mytxt = mytxt;
    this.recommend = recommend;
    this.author = author;
  }
}