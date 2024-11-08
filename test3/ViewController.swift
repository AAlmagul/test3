//
//  ViewController.swift
//  test3
//
//  Created by Алмагуль Абдыгали on 08.11.2024.
//

import UIKit

class ViewController: UIViewController {

    private var movies: [Movie] = [
        Movie(
            title: "Final Destination",
            description: "Alex Browning is embarking on a trip to Paris. Alex experiences a premonition -- he sees the plane explode moments after leaving the ground. Alex insists that everyone get off the plane and 7 people including Alex, are forced to disembark. All watch as the plane actually explodes in a fireball. He and the other survivors have briefly cheated death, but will not be able to evade their fate for very long. One by one, these fugitives from fate fall victim to the grim reaper.",
            image: .finalDestination,
            year: "2000",
            genre: "Horror, thriller, action", 
            isFavorite: false
        ),
        Movie(
            title: "White Chicks",
            description: "Two FBI agent brothers, Marcus and Kevin Copeland , accidentally foil a drug bust. As punishment, they are forced to escort a pair of socialites (Anne Dudek, Rochelle Aytes) to the Hamptons, where they're going to be used as bait for a kidnapper. But when the girls realize the FBI's plan, they refuse to go. Left without options, Marcus and Kevin decide to pose as the sisters, transforming themselves from African-American men into a pair of blonde, white women.",
            image: .whiteChicks,
            year: "2004",
            genre: "Comedy, crime, mystery"
            isFavorite: false
        ),
        Movie(
            title: "Avengers: Age of Ultron",
            description: "When Tony Stark jump-starts a dormant peacekeeping program, things go terribly awry, forcing him, Thor , the Incredible Hulk  and the rest of the Avengers to reassemble. As the fate of Earth hangs in the balance, the team is put to the ultimate test as they battle Ultron, a technological terror hell-bent on human extinction. Along the way, they encounter two mysterious and powerful newcomers, Pietro and Wanda Maximoff.",
            image: .avengers,
            year: "2015",
            genre: "Action, superhero, sci-fi"
            isFavorite: false
        ),
        Movie(
            title: "The Proposal",
            description: "Faced with deportation to her native Canada, high-powered book editor Margaret Tate says she's engaged to marry Andrew Paxton , her hapless assistant. Andrew agrees to the charade, but imposes a few conditions of his own, including flying to Alaska to meet his eccentric family. With a suspicious immigration official always lurking nearby, Margaret and Andrew must stick to their wedding plan despite numerous mishaps.",
            image: .proposal,
            year: "2009",
            genre: "Romantic comedy, romance, comedy",
            isFavorite: false
        ),
        Movie(
            title: "How to Lose a Guy in 10 Days",
            description: "An advice columnist, Andie Anderson, tries pushing the boundaries of what she can write about in her new piece about how to get a man to leave you in 10 days. Her editor, Lana, loves it, and Andie goes off to find a man she can use for the experiment. Enter executive Ben Berry, who is so confident in his romantic prowess that he thinks he can make any woman fall in love with him in 10 days. When Andie and Ben meet, their plans backfire.",
            image: .htlg10D,
            year: "2003",
            genre: "Romantic comedy, romance, comedy",
            isFavorite: false
        ),
        Movie(
            title: "The Substance",
            description: "Elisabeth Sparkle, renowned for an aerobics show, faces a devastating blow on her 50th birthday as her boss fires her. Amid her distress, a laboratory offers her a substance which promises to transform her into an enhanced version of herself.",
            image: .substance,
            year: "2024",
            genre: "Body-horror, horror, drama",
            isFavorite: false
            
        ),
        Movie(
            title: "She's the Man",
            description: "A football-mad teenager is incensed when her high school cuts the girls' soccer team and refuses to let her join the boys' side. She disguises herself as a boy and takes her twin brother's place at his all-male prep school.",
            image: .shesTheMan,
            year: "2006",
            genre: "Romantic comedy, romance, comedy",
            isFavorite: false
        ),
        Movie(
            title: "The Amazing Spider-Man",
            description: "Abandoned by his parents and raised by an aunt and uncle, teenager Peter Parker, AKA Spider-Man, is trying to sort out who he is and exactly what his feelings are for his first crush, Gwen Stacy. When Peter finds a mysterious briefcase that was his father's, he pursues a quest to solve his parents' disappearance. His search takes him to Oscorp and the lab of Dr. Curt Connors, setting him on a collision course with Connors' alter ego, the Lizard.",
            image: .spiderman,
            year: "2012",
            genre: "Action, superhero, sci-fi",
            isFavorite: false
        ),
        Movie(
            title: "The Ugly Truth",
            description: "Abby Richter is a lovelorn TV producer who, despite a long and arduous search for the perfect mate, is hopelessly single. The battle of the sexes heats up when her employers team her up with Mike Chadway , an opinionated TV celebrity who plans to put Abby through the wringer to prove his own theories about what makes men and women tick.",
            image: .uglyTruth,
            year: "2009",
            genre: "Romantic comedy, romance, comedy",
            isFavorite: false
        ),
        Movie(
            title: "The call",
            description: "A veteran operator for an emergency call-center, Jordan  saves lives daily as part of her job, but when a young woman's frantic report of a prowler ends tragically, Jordan is devastated. She decides to pack it in on the front lines and -- instead -- teach others the ropes of the high-pressure job. But when a call from a kidnapped teen comes in, Jordan takes charge as never before and turns the girl into a partner in helping to save her life.",
            image: .theCall,
            year: "2013",
            genre: "Horror, thriller, action",
            isFavorite: false
        ),
        Movie(
            title: "10 Things I Hate About You",
            description: "Kat Stratford is beautiful, smart and quite abrasive to most of her fellow teens, meaning that she doesn't attract many boys. Unfortunately for her younger sister, Bianca, house rules say that she can't date until Kat has a boyfriend, so strings are pulled to set the dour damsel up for a romance. Soon Kat crosses paths with handsome new arrival Patrick Verona. Kat may let her guard down enough to fall for the effortlessly charming Patrick.",
            image: ._10Tihay,
            year: "1999",
            genre: "Romantic comedy, romance, comedy",
            isFavorite: false
        ),
    ]

    @IBOutlet private weak var tableView: UITableView!

    private var selectedMovie: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? SecondViewController else {
            return
        }
        destVC.configure(with: selectedMovie)
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMovie = movies[indexPath.row]
        performSegue(withIdentifier: "goToDetail", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "primaryCell", for: indexPath) as! PrimaryTableViewCell
        let currentModel = movies[indexPath.row]
        cell.configure(currentModel)
        return cell
    }
}
