
export default interface  Goods {
  courseId: number;
  name: string;
  total_price: string;
  used_price: string;
  start_time: string;
  end_time: string;
  company: string;
  isObject: boolean;
  object_content: string;
  pic: Resource;

  // constructor(
  //   courseId: number,
  //   name: string,
  //   total_price: string,
  //   used_price: string,
  //   start_time: string,
  //   end_time: string,
  //   company: string,
  //   isObject: boolean,
  //   object_content: string,
  //   pic: string
  // ) {
  //   this.courseId = courseId;
  //   this.name = name;
  //   this.total_price = total_price;
  //   this.used_price = used_price;
  //   this.start_time = start_time;
  //   this.end_time = end_time;
  //   this.company = company;
  //   this.isObject = isObject;
  //   this.object_content = object_content;
  //   this.pic = pic;
  // }
}