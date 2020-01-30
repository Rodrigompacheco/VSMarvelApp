
import UIKit

typealias GridViewController = CharactersViewController<GridViewCell>
typealias ListViewController = CharactersViewController<ListViewCell>

final class MainCoordinator {
    
    weak var navController: DSNavigationControllerProtocol?
    
    init(navController: DSNavigationControllerProtocol?) {
        self.navController = navController
    }
    
    func start() {
        let vc = ListViewController(viewModel: ListViewModel(title: "Characters", router: self))
        navController?.navigate(to: vc, using: DSNavigationType.push)
    }
}

extension MainCoordinator: GridRouter {
    func grid_goTo(_ vm: CharacterViewModel) {
        let coord = DetailCoordinator(navController: navController, viewModel: vm)
        coord.start()
    }
    
    func grid_switchToList() {
        let vc = ListViewController(viewModel: ListViewModel(title: "Characters", router: self))
        navController?.navigate(to: vc, using: DSNavigationType.replace)
    }
}

extension MainCoordinator: ListRouter {
    func list_goTo(_ vm: CharacterViewModel) {
        let coord = DetailCoordinator(navController: navController, viewModel: vm)
        coord.start()
    }
    
    func list_switchToGrid() {
        let vc = GridViewController(viewModel: GridViewModel(title: "Characters", router: self))
        navController?.navigate(to: vc, using: DSNavigationType.replace)
    }
}
