class Post{
  Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,
  });

  final String title;
  final String author;
  final String imageUrl;
  final String description;

  bool selected = false;
}

final List<Post> posts = [
  Post(
    title: 'Candy Sheep',
    author: 'Author1',
    imageUrl: 'https://pics1.baidu.com/feed/c8ea15ce36d3d539258179c355f7fc56342ab0ec.jpeg?token=b1269188a783ffac3a8fa9b5d2b423f8&s=0330E02254AB0AAC261F1CC90000C0B0',
    description:'Candy Sheep description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'Contained',
      author: 'Author2',
      imageUrl: 'https://pics2.baidu.com/feed/6609c93d70cf3bc79b66c0cbbe70afa7cd112a2c.jpeg?token=2770e8c64a553b63aac48448202bfc1a&s=E1F51BC68B042F70104CD8A903005006',
      description:'Contained description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'Free',
      author: 'Author3',
      imageUrl: 'https://pics1.baidu.com/feed/1f178a82b9014a909ccf587ff0c72f14b11beeb1.jpeg?token=e7fd680ccbf6aa973c03573b0b8c3012&s=ED85BC540C009C591CA838950300D08C',
      description:'Free description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'Over',
      author: 'Author4',
      imageUrl: 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2445626926,104376369&fm=26&gp=0.jpg',
      description:'Over description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'Say Hello',
      author: 'Author5',
      imageUrl: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=369927531,2982116070&fm=26&gp=0.jpg',
      description:'Say Hello description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'The child',
      author: 'Author6',
      imageUrl: 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2619094107,3038884380&fm=26&gp=0.jpg',
      description:'The child description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'Dragon',
      author: 'Author4',
      imageUrl: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2739766281,1082290290&fm=26&gp=0.jpg',
      description:'Dragon description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'Tomado',
      author: 'Author5',
      imageUrl: 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1760680736,427172321&fm=26&gp=0.jpg',
      description:'Tomado description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'What',
      author: 'Author6',
      imageUrl: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1680749847,3169637404&fm=26&gp=0.jpg',
      description:'What description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'No No',
      author: 'Author4',
      imageUrl: 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2893447892,2002014597&fm=26&gp=0.jpg',
      description:'No No description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'Thanks',
      author: 'Author5',
      imageUrl: 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1665984241,3404686096&fm=26&gp=0.jpg',
      description:'Thanks description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'AdamWeb',
      author: 'Author6',
      imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2800916004,2049366374&fm=26&gp=0.jpg',
      description:'AdamWeb description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'Welcome',
      author: 'Author4',
      imageUrl: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=223498478,144011881&fm=26&gp=0.jpg',
      description:'Welcome description~~~泡面是很多人都经常吃的一种食物，尤其是懒得做饭的时候，以前吃泡面，只需要烧一锅开水，然后把泡面放进去泡一泡就能吃了，这是最简单的泡面，其实泡面在吃的时候，做法也有很多种，每一种做法做出来的泡面味道吃起来都是不一样的，我们全家都很喜欢吃泡面，每一个人的吃法都不一样的，家庭版泡面大比拼，最好吃的可以奖励200元，如果让你选的话，你觉得哪一个能够胜出呢？'
  ),
  Post(
      title: 'Olivia',
      author: 'Author5',
      imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1580981035084&di=ef609faf0fb3b2e3da448428e28c44dd&imgtype=0&src=http%3A%2F%2Fimg2.oldkids.cn%2Fupload%2F260784000%2Fu260781729%2F2012%2F08%2F18%2Fphoto_20120818112610068911.gif',
      description:'Olivia description~~~'
  ),
  Post(
      title: 'Tai',
      author: 'Author6',
      imageUrl: 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3648211111,37612350&fm=26&gp=0.jpg',
      description:'Tai description~~~'
  ),
];

