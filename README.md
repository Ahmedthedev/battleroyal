# Tensorflow Feuille de route 

Le projet consiste en la réalisation d'un service de détection d'objet par computer vision 

## Installation( Docker ) 

Installez Docker sur votre machine comme décrit dans la documentation de Docker .
Lancez un conteneur Docker contenant l'une des images binaires TensorFlow.

Le reste de cette section explique comment lancer un conteneur Docker.
Pour lancer un conteneur Docker contenant l'image binaire TensorFlow, entrez une commande au format suivant:

```
  $ docker run -it -p hostPort: conteneurPort TensorFlowImage 
```

-p hostPort: containerPort est facultatif.

Si vous souhaitez exécuter des programmes TensorFlow à partir du shell, ne sélectionnez pas cette option.
Si vous souhaitez exécuter les programmes TensorFlow à partir du bloc-notes Jupyter, définissez hostPort et containerPort sur 8888 . 
Si vous souhaitez exécuter TensorBoard à l'intérieur du conteneur, ajoutez un second indicateur -p , définissant hostPort et containerPort sur 6006.

### Prerequisites

What things you need to install the software and how to install them


### Installing

A step by step series of examples that tell you have to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
