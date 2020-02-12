import { Component } from '@angular/core';

@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page {
  categories: any = [
    {
      "title": "Most Recent"
    },
    {
      "title": "Self-Defense Tips"
    },
    {
      "title": "Share a Story"
    },
    {
      "title": "Reporting"
    }
  ];

  posts: any = [
    {
      "title": "Some Title",
      "preview": "Text preview of some content",
      "favorites": 25,
      "comments": 20,
    },
    {
      "title": "Some Title",
      "preview": "Text preview of some content",
      "favorites": 5,
      "comments": 0,
    },
    {
      "title": "Some Title",
      "preview": "Text preview of some content",
      "favorites": 15,
      "comments": 2,
    }
  ]
  constructor() {

  }

}
