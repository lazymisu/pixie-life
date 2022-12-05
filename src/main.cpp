#include <SFML/Graphics.hpp>

int main()
{
    sf::RenderWindow window(sf::VideoMode(1920, 1080), "Pixie Life 1.0.0", sf::Style::Close);

    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();

            // handle input
        }

        // update

        window.clear();

        // draw

        window.display();
    }

    return EXIT_SUCCESS;
}