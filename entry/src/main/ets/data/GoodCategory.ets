import Goods from './Goods';

export default interface GoodCategory {
  classifyId: number;
  classifyName: string;
  courseList: Array<Goods>;

  // constructor(classifyId: number, classifyName: string, courseList: Array<Goods>) {
  //   this.classifyName = classifyName;
  //   this.courseList = courseList;
  //   this.classifyId = classifyId;
  // }
}