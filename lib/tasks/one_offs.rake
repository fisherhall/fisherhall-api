namespace :one_offs do
  desc "add new bulletin"
  task :new_bulletin => :environment do
    service_order = " - **Call to Worship**
 - **Praise & Worship**
 - **Children's Moment**
 - **[Announcements](#announcements)**
 - **Tithe & Offering**
 - **Sermon**  
   Am I My Brother's Keeper?  
   1 Thessalonians 5:12-18  
   Rev. Thomas Chan
 - **Doxology**
 - **Benediction**"

    service = Group.find_by(slug: "english-service")
    published_at = DateTime.new(2020, 8, 23, 13, 30)
    
    sermon = Sermon.create(
      group: service,
      name: "Am I My Brother's Keeper?",
      published_at: published_at,
      speaker: "Rev. Thomas Chan",
    )

    bulletin = Bulletin.create(
      published_at: published_at,
      name: "Sunday Worship Service",
      service_order: service_order,
      group: service
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Welcome friends and visitors. We invite you to make MCAC your **SPIRITUAL HOME**. Please let us know how we can be of help to you.",
      position: 1,
    )

    Announcement.create(
      bulletin: bulletin,
      description: "We thank Angela, Amos, Key, Nelson, Sam and the VSM team for the production of the Service video. **The production team is training helpers.** If you would like to serve in this area, please contact one of them.",
      position: 2,
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Pastoral Search Updates:** The PSC is working on the profile of our congregation and the pastoral job postings. Please continue to pray for the pastor that God prepared for us and for the congregation that God helps us to trust and obey his plan of the English pastor.",
      position: 3,
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The **Youth Fellowship** is starting a new school year. They meet every second Saturday on Zoom. The fellowship program and updates can be found on the MCAC Youth Facebook. Please pray for ❶ the counselors as they try to reset for the new school year, ❷ find new ways to build relationships in a virtual setting, ❸ figure out a good transition between Youth Group and Bethany Fellowship student leaders - they'll be leading in this new age! ❹ Pray for the youth patience as counselors navigate this new environment and their courage to try new things. ❺ Searching for a new counselor to facilitate Sunshine's exit.",
      position: 4,
    )

    Announcement.create(
      bulletin: bulletin,
      description: "With the uncertainties and issues surrounding COVID-19 and the children returning to school, Emmanuel Alliance Church in Ottawa organizes a workshop **“Back to School: Get Set and Go!”** Dr. Lawrence Leung will give a presentation from medical perspective to help parents prepare for it. It is on August 29, 7:00-9:00pm. YouTube link will be posted here when available.",
      position: 5,
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Thanks to the help of the Summer Interns and the Children Ministry co-workers, there will be a **Children Moment** presentation during the Service in the coming few weeks. The Children Sunday School will begin in September. Stay tuned for more info.",
      position: 6,
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The **English Congregation prayer meeting** is on every Wednesday at 8:00pm on Zoom, [ID: 514 482 2704; PW: mcac](https://zoom.us/j/5144822704?pwd=bllLeHF0Q2JlMC9VcExONUk3cVB5dz09).",
      position: 7,
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Come & join us after service for a time of fellowship on Zoom ☕️: [ID: 514 482 2704; PW: mcac](https://zoom.us/j/5144822704?pwd=bllLeHF0Q2JlMC9VcExONUk3cVB5dz09).",
      position: 8,
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**CCM Montreal** will start a food bank ministry this September. We will provide food baskets to the most needy, primarily in our Chinese community, once a month. Your prayers and financial support are appreciated. For more info, please contact Karen Lee (Wing Hei's mom).",
      position: 9,
    )
  end
end
