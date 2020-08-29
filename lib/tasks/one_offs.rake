namespace :one_offs do
  desc "add new bulletin"
  task :new_bulletin => :environment do
    service_order = " - **Call to Worship**
 - **Praise & Worship**
 - **Children's Moment**
 - **[Announcements](#announcements)**
 - **Tithe & Offering**
 - **Sermon**  
   Do Not Be Anxious  
   Matthew 6:25-34  
   Rev. Ian Ho
 - **Doxology**
 - **Benediction**"

    service = Group.find_by(slug: "english-service")
    published_at = DateTime.new(2020, 8, 30, 13, 30)
    
    sermon = Sermon.create(
      group: service,
      name: "Do Not Be Anxious",
      published_at: published_at,
      speaker: "Rev. Ian Ho",
    )

    bulletin = Bulletin.create(
      published_at: published_at,
      name: "Sunday Worship Service",
      service_order: service_order,
      group: service
    )

    position = 0

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
      description: "There will be Holy Communion next Sunday. We ask those who are baptized to prepare the bread and grape juice at home and participate during the Holy Communion. We invite those who are not baptized to join in meditation.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Pastoral Search Updates:** The PSC is working on the profile of our congregation and the pastoral job postings. Please continue to pray for the pastor that God prepared for us and for the congregation that God helps us to trust and obey his plan of the English pastor.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The **Youth Sunday School** Fall term will start on September 13 and run until Dececember 13, 2020. Classes take place from 11:15 am to 12:30 pm on Zoom. There are two classes: ❶ Youth 1 – Sec 1&2; ❷ Youth 2 – Sec 3-5. For more info, please contact Elder Daniel.",
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
      description: "Come & join us after service for a time of fellowship on Zoom ☕️: [ID: 514 482 2704; PW: mcac](https://zoom.us/j/5144822704?pwd=bllLeHF0Q2JlMC9VcExONUk3cVB5dz09).",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "CCM Montreal **“Love Basket”** operation begins in September. You can support in the following ways: ❶ collect, prepare or deliver food baskets; ❷ donate non-perishable food items; ❸ financial support. Please contact Karen Lee (Wing Hei's mom) for more info.",
    )
  end
end
