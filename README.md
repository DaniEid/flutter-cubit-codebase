# flutter bloc/cubit clean architecture base

A Flutter project to show clean architecture in use with bloc.

## Getting Started

This project is using build_runner to generate the boilerplate code, so we can keep focusing on the real code

A few resources to get you started for this project:

- State Management: [Cubit provided by bloc](https://pub.dev/packages/flutter_bloc)
- Dependency injection: [GetIt](https://pub.dev/packages/get_it)
- Dependency injection generator: [Injectable](https://pub.dev/packages/injectable)
- Routing and route generate: [auto_route](https://pub.dev/packages/auto_route)


# Architecture note

#### The Domain layer
Contains all the use cases, Entities and the definitions of our repository for the project
we have a single use that will represent one task that should be done
we also have usecase which group all the usecases that is related to one feature


#### The Data layer
Contains the data sources either remote or locale
for now there is only remote data source that will fetch the content from the API.

we also have the repository implementation within this layer that will be responsible of declaring the implementation from the domain layer
and for sure will be responsible of fetching the data and handling the data from local/remote sources


#### The Presentation layer
Contains all the views, storyboards, custom views, custom cells and the view controllers
each view model will be a child for BaseViewModel, and each view controller will be a child for BaseViewController where we should declare the viewmodel that will be used

#### The infrastructure layer
Will have all the abstract classes/generics/routing and dependency injection


# Running the project

To run the project you need first to open the terminal and type:
 flutter packages pub run build_runner build --delete-conflicting-outputs


