namespace :one_offs do
  desc "add new bulletin"
  task :new_bulletin => :environment do
    sermon_name = "In Green Pastures"
    speaker = "Pastor Joel Uong"
    scripture = "Psalm 23:2a"

    service_order = " - **Call to Worship**
 - **Praise & Worship**
 - **[Announcements](#announcements)**
 - **Tithe & Offering**
 - **Sermon**  
   #{sermon_name}  
   #{scripture}  
   #{speaker}
 - **Holy Communion**
 - **Doxology**
 - **Benediction**"

    service = Group.find_by(slug: "english-service")
    published_at = DateTime.new(2020, 9, 6, 13, 30)
    
    sermon = Sermon.create(
      group: service,
      name: sermon_name,
      published_at: published_at,
      speaker: speaker,
    )

    bulletin = Bulletin.create(
      published_at: published_at,
      name: "Holy Communion Sunday Worship Service",
      service_order: service_order,
      group: service
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Welcome friends and visitors. We invite you to make MCAC your **SPIRITUAL HOME**. Please let us know how we can be of help to you.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "We thank Angela, Amos, Key, Nelson, Sam and the VSM team for the production of the Service video. **The production team is training helpers.** If you would like to serve in this area, please contact one of them.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Today is Holy Communion Sunday. We ask those who are baptized to participate with bread and grape juice. We invite those who are not baptized to join in meditation.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The Youth Sunday School happens every Sunday from 11:15 am to 12:30 pm, September 13 to December 13, 2020. This semester, we will study together the Book of Romans. Join the Youth 1 class (Sec I & II) with Shaden and Yen-Nhi or the Youth 2 class (Sec III, IV, & V) with Jeremy and Estelle. [Students must register.](https://docs.google.com/forms/d/e/1FAIpQLSdwhStkKk7AXO-61DGcEaPsb6ttRinsKZeNtkI2bLZSABcycQ/viewform?fbclid=IwAR3XRiE8aWfUMn6UXjs2vn8aGNAToyfJrEPWagqfQd1HPqSx7qScK2Z-m7M) For enquiry, please contact Elder Daniel.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Pastoral Search Updates:** The PSC is working on the profile of our congregation and the pastoral job postings. Please continue to pray for the pastor whom God has prepared for us and for the congregation. May God help us trust and obey his plan for the English pastor.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The **Youth Fellowship** is starting a new school year. They meet every second Saturday on Zoom. The fellowship program and updates can be found on the MCAC Youth Facebook. Please pray for ❶ the counselors as they try to reset for the new school year, ❷ find new ways to build relationships in a virtual setting, ❸ figure out a good transition between Youth Group and Bethany Fellowship student leaders - they'll be leading in this new age! ❹ Pray for the youth patience as counselors navigate this new environment and their courage to try new things. ❺ Searching for a new counselor to facilitate Sunshine's exit.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The **English Congregation prayer meeting** is on every Wednesday at 8:00pm on Zoom, [ID: 514 482 2704; PW: mcac](https://zoom.us/j/5144822704?pwd=bllLeHF0Q2JlMC9VcExONUk3cVB5dz09).",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Come & join us after service for a time of fellowship on Zoom ☕️: [ID: 929 7664 6166; PW: fisher](https://zoom.us/j/92976646166?pwd=TDFweTFHNENWNzJwUEhxTWs3eG9qZz09).",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "CCM Montreal **“Love Basket”** operation begins in September. You can support in the following ways: ❶ collect, prepare or deliver food baskets; ❷ donate non-perishable food items; ❸ financial support. Please contact Karen Lee (Wing Hei's mom) for more info.",
    )
  end
end
