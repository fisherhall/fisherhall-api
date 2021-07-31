namespace :one_offs do
  desc "add new post"
  task :new_post => :environment do
    service = Group.find_by(slug: "english-service")

    post = Post.new
    post.group = service
    post.author = User.find_by(email: "ac@amoschan.com")
    post.title = "Mid-Year Financial Report 2021"
    post.content = "Church mid-year (22 weeks) financial report (January 1st, 2021 –
    June 5th, 2021). For enquiry, please contact Ben Kwok or Elena.

<style>
table {
  width: 100%;
}
</style>


| Category                              | Actual                | Budget   | Variance  |
|---------------------------------------|-----------------------|----------|-----------|
| General Income<br/>General Expenses * | $159,483<br/>$173,236 | $200,129 | $(40,647) |
| General Net Income                    | $(13,753)             |          |           |
| Missions Income<br/>Missions Expenses | $27,058<br/>$26,303   | $34,228  | $(7,170)  |
| Missions Net Income                   | $(12,998)             |          |           |
| Benevolence Fund Remaining            | $13,775.22            |          |           |

<br/><br/>

|           | Actual   | Budget   |
|-----------|----------|----------|
| Admin     | $169,039 | $170,975 |
| Finance   |     $925 |   $1,354 |
| Caring    |     $237 |   $1,904 |
| Education |      $59 |     $635 |
| Service   |     $362 |   $3,473 |
| English   |   $1,177 |   $3,173 |
| Building  |   $1,437 |  $17,346 |
| Mission   |  $26,303 |  $34,228 |
| Total     | $199,539 | $234,358 |
    "

    post.kind = :post

    post.save
  end

 desc "add new bulletin"
  task :new_bulletin => :environment do
    service = Group.find_by(slug: "english-service")
    sermon_name = "Give Me a Man"
    speaker = "Rev. Dr. James Hudson Taylor IV"
    scripture = "1 Samuel 17:10"
    service_name = "Sunday Worship Service"
    published_at = DateTime.new(2021, 7, 25, 13, 30)

    service_order = " - **Call to Worship**
 - **Praise & Worship**
 - **Missions Moment**
 - **[Announcements](#announcements)**
 - **Tithe & Offering**
 - **Sermon**  
   #{sermon_name}  
   #{scripture}  
   #{speaker}
 - **Doxology**
 - **Benediction**"

    sermon = Sermon.create(
      group: service,
      name: sermon_name,
      published_at: published_at,
      speaker: speaker,
    )

    bulletin = Bulletin.create(
      published_at: published_at,
      name: service_name,
      service_order: service_order,
      group: service
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Welcome friends and visitors. We invite you to make MCAC your **SPIRITUAL HOME**. Please let us know how we can be of help to you.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "In the month of July we will continue focusing on the topic
      of Missions. Different JMC speakers will share with us during the Sunday
      Service. Today’s speaker is **Rev. Dr. James Hudson Taylor IV**. He is
      the OMF Missionary and the President of China Evangelical Seminary.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Aiwah Uong** and **Elena Yiu** have been nominated by the
      ELT to serve on the Elders Nomination Committee. Members can submit other
      nominations before August 13. You may contact the ELT or Edith for the
      membership voting list and the qualification. If there is no other
      nomination before Aug 13 nor any objection to the above nominees before
      Aug 15, the ELT will accept them to serve in the Elders Nomination
      Committee.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Next Sunday will be Holy Communion. We ask those who are
      baptized to prepare the bread and grape juice at home and participate
      during the Holy Communion. We invite those who are not baptized to join
      in meditation.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The Board of Elders accepted the Pastoral Search Committee
      recommendation. Due to the pandemic, the candidate [**Pastor James
      Mathew**](https://jameslevi.org) cannot come to meet and talk with all
      the Elders and the English congregation members in person, which is one
      of the important steps. Instead, the church arranged for Pastor James
      Mathew a 4-month candidature. During this candidating period, he will be
      ministering to us through Zoom, so to develop a deeper understanding of
      each other, until COVID regulations are changed. Please pray for him and
      the ELT as they plan the next months ahead.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Church Reopening: The Elders Board approved the
      recommendation of the MCAC Building Reopening Committee that the church
      will begin the Hybrid Services (physical and online at the same time) in
      August. Worshippers can register on this website from 1 week in advance,
      and up to the day of service. Both Cantonese and Mandarin Hybrid Services
      will begin next Sunday while the **English on August 15**. Cantonese Service
      will be moved to 11:30am to allow sufficient time between services. For
      details and registration, stay tuned here.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Fellowship Reboot:** The gospel is a family meal. It is meant
      to be enjoyed regularly and intentionally in the presence of others and
      for the benefit of others. [Find a fellowship that works for
      you](https://mcac.church/english-service/2021/1/11/134/fellowship-reboot-save-the-date)
      and let's enjoy this family meal together.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Church care:

- The English Congregation **prayer meeting** is on every Wednesday at 8:00pm
  on Zoom: **ID: 514 482 2704; PW: mcac**.
- We thank **Jack**, **Sewan**, **David**, **Nancy**, **Francis**, **Nelson**
  and **Amos** for the production of the Service video. The production team is
  training helpers.  Welcome to contact Tim Chin or Nelson, if you want to help
  with production.
- Come and join us any time between 11am and noon for a time of [Fisher Hall
  Fellowship on Zoom](https://fisherhall.mcac.church).",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "[AweYsome Arts in Worship Online Camp
      2021](http://www.aweysome.org) is for Youth Grade 5 and up, youth
      workers, worship leaders and team members. Date: August 16-20, 2021
      (Monday-Friday), 9:30am-3:30pm",
    )
  end
end
