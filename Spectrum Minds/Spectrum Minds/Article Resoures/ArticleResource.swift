//
//  ArticleResource.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 13/04/2023.
//

import Foundation

struct ArticleResource: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let discription: String
    let information: String
    let url: String
    let url1: String
    let urlname: String
    let urlname2: String
}
extension ArticleResource {
    static let productList: [ArticleResource] = [
        ArticleResource(
            name: "Technologies to help with depression",
            image: "Image2",
            discription: "Alternative mobile applications that can help users with depression. ",
            information: "There are number of apps on the market right now that are helpful for people who are suffering through depression. Most of the applications are mood diary’s and trackers. These apps help people to keep tracking their emotions and feelings which they can then bring up on one of their therapy sessions. Two of these apps are mentioned here that can be helpful for user. The First app is called “Talk Life”, this application helps users to connect with people who are suffering through same issues as them. This is a helpful app for people who want to connect with others who would understand them and talk about their problems without any prejudice. Another application mentioned here is called “Youper”, this an artificial intelligence app that will help you chat with a chatbot that gives instant probable solutions for the mental health problems that you are facing. The company describes this application as, Chat back and forth with your assistant, who asks prompts that encourage you to think about your thought patterns and behaviours. The app walks you through techniques you may need at the moment based on your responses. It then summarizes your conversations and interactions into insights to help you understand more about your emotional well-being.",
            url: "https://www.talklife.com/",
            url1: "https://www.youper.ai/",
            urlname: "TalkLife App",
            urlname2: "Youper App"
        ),
        ArticleResource(
            name: "Technologies to help with Anxiety",
            image: "Image3",
            discription: "Alternative mobile applications that can help users with anxiety.",
            information: "There is already something in this app that can help people with their anxiety and that is the music player implemented in this app. But people might need more resources for these issues so some more applications have been mentioned here that can help people with their anxiety. “Nature sounds relax & sleep” is an app that plays sound found in our nature. The sounds are scientifically proven to reduce the heart rate of a person and stop them from panicking. These sounds also help people sleep, this is especially useful for people with sleep anxiety. Another app which helps with issues is called “Breathwrk”, this application is a breathing exercise app that helps people to control their breathing and lower their heart rates. This app can help people who are on the brink of having a panic attack. This app will help them to breath properly and regulate their heart which will decrease the chance of getting a panic attack.",
            url: "https://play.google.com/store/apps/details?id=com.desenvemax.naturesoundsrelaxandsleep&hl=en_GB&gl=US",
            url1: "https://www.breathwrk.com/",
            urlname: "Nature and sleep App",
            urlname2: "Breathwrk App"
        ),
        ArticleResource(
            name: "Music for Mental Health",
            image: "Image8",
            discription: "Curated music playlists for mental health.",
            information: "Music has scientifically proven to be a great resource that helps people navigate through their emotions and help them with depression and anxiety. A playlist has been provided above that includes the song recommendations that are taken from other people who suffer from mental health issues. These people said that these songs helped them in a depressive episode and became their comfort space. Another playlist has been provided that has become popular in recent years, these types of music are know as soul music and they help a lot in concentration and relax people, this can be especially beneficial for people with ADHD and other neurodivergent problems.",
            url: "https://open.spotify.com/playlist/78TvJc4ywLZlyr1cwK7xof?si=203f5b28fe324f5b",
            url1: "https://open.spotify.com/playlist/0vvXsWCC9xrXsKd4FyS8kM?si=900a9b2b3bce448d",
            urlname: "Playlist Curated by Patients",
            urlname2: "Concentration Playlist"
        ),
        ArticleResource(
            name: "Informational Mental Health Resource Videos",
            image: "Image100",
            discription: "Curated video playlists for mental health.",
            information: "A lot of people rather than reading mental health resources would like to watch videos about it. This page has curated two resources that can help people learn, understand, and find resources for mental health through visual presentation. The first playlist is a YouTube playlist that has all the animated videos that talks about the problems and solutions for people having these issues. The second playlist also a YouTube playlist but the contents of this playlist is from TEDX Talks. People talking in these TEDX Talks are psychiatrist, psychologists and people who have experienced these issues and how they are handling them now. This playlist can help people who want to learn a bit more about these issues. The NHS also has a website that dedicates video presentation for various mental health issues, users can access that as well when they visit the NHS website.",
            url: "https://youtube.com/playlist?list=PL_ixCoEORlzK_a__cKB7OAWt1tbdNWR2n",
            url1: "https://youtube.com/playlist?list=PL_ixCoEORlzKkmKjYaqgbDXMbEtQgVStd",
            urlname: "Animation Playlist",
            urlname2: "TEDx Talk Playlist"
        ),
        ArticleResource(
            name: "Books and Podcast",
            image: "Image6",
            discription:"Books and Podcast that can help you with mental health issues.",
            information: "Information: Books and Podcasts are known as a medium of comfort for a lot of people, and a lot of people like to read and listen to information than to watch videos. This resource focuses on both important books that are good for people suffering with mental health crisis and also popular podcasts that have helped people facing these issues. Books that are recommended by a lot of mental health practitioners are: The Body Keeps the Score.  End Anxiety Now. • The Unexpected Joy of Being Sober. • Healing the Trauma of Abuse: A Women’s Workbook. • Maybe You Should Talk to Someone. • Emotional First Aid. • It Didn’t Start with You: How Inherited Family Trauma Shapes Who We Are and How to End the Cycle. • Attached: The New Science of Adult Attachment and How It Can Help You Find—and Keep—Love. • The Highly Sensitive Person: How to Thrive When the World Overwhelms You. • Loving Bravely. • 7 Habits of Highly Effective People.For the podcasts a link to a playlist has been provided where you can listen to various helpful podcast, another link has been provided with more book recommendation that you can read after you have read the recommendations mentioned here.",
            url: "https://www.penguin.co.uk/articles/2022/05/books-to-maintain-discuss-promote-mental-health-awareness",
            url1: "https://open.spotify.com/playlist/2DO56ftdw3Sa1lVR3aF89i?si=697a37ab805340e0",
            urlname: "More Book Recommendation",
            urlname2: "Podcast Playlist"
        ),
        ArticleResource(
            name: "Online Therapy",
            image: "Image7",
            discription:"Resources to find online therapist.",
            information: "A lot of people do like to have in person chats about what is going on in their life and what issues they are facing, may that be talking to a therapist. So, online therapy or better known as e-therapy has come a long way to make people comfortable talking about their mental health issues through their home. Two these types of therapies have been provided in the above links. One is called as Better Help, this app has therapy for individuals, couples and even teens. You get matched with a therapist here based on the support that you need and it is known to be very effective. Another app is called as Talk Space. Talkspace offers several communication platforms, therapy options, and also prescribed medications. It also has over 3000 licensed therapists who are there to help patients. If you are looking for e-therapy these apps can be a great starting point. ",
            url: "https://www.talkspace.com/",
            url1: "https://www.betterhelp.com/",
            urlname: "TalkSpace App",
            urlname2: "BetterHelp App"
        ),
        ArticleResource(
            name: "Activities for mental health",
            image: "Image1",
            discription: "Activities that help in improvement of mental health.",
            information: "There are many activities that can help me with their mental health issues. Going out of your house and taking a walk can help a lot when it comes to calming your brain. Research has found other activities that are successful in tackling these issues are yoga and meditation. According to American Osteopathic Association Yoga’s incorporation of meditation and breathing can help improve a person’s mental well-being. Regular yoga practice creates mental clarity and calmness; increases body awareness; relieves chronic stress patterns; relaxes the mind; centres attention; and sharpens concentration. In this resource two applications have been provided that are well known for their effective ways of keeping people’s mind in calm and health in shape. The first app is called as “MindShift CBT” CBT is a type of therapy that focuses on identifying negative thought patterns in an effort to recognize and reconstruct them. MindShift CBT is an app that supports users of CBT by providing daily mood check-ins, guided relaxation and mindfulness meditations, and tips for dealing with general worry, social anxiety, phobias, panic attacks, and more – all for free. Another resource provided here is a playlist for yoga and meditation which can be accessed on YouTube. There are other things that you can also do like taking part in something that requires creativity like art. Participating in the arts can enable people to deal with a wide range of mental ill-health conditions and psychological distress. The best part is that it helps people to improve their mental health through creativity. Making art is helping many people express themselves, without having to use words. Go through these resources if you want to go through some activities that are proven to clear your mind.",
            url: "https://www.anxietycanada.com/resources/mindshift-cbt/",
            url1: "https://youtube.com/playlist?list=PL_ixCoEORlzLYnw1eW9_DNNM0aGgbXutS",
            urlname: "Mindshift App",
            urlname2: "Playlist for Yoga and Meditation"
        
        )
    ]
    
}
