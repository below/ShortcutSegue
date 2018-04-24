# ShortcutSegue
A sample to illustrate a storyboard segue navigation question

## Objective
I would like to present the ViewController "C" directly from "A" while retaining the navigation flow, i.e. afterwards, the "Back" button on "C" should return to "B".

## Solution
It is actually quite simple: You just rearrange the stack of view controllers on the `UINavigationController`:

```Swift
let storyboard = self.storyboard! // As this is a sample, I am a bit liberal with force unwrapping

// This depends a bit from where you are coming. Sometimes you don't want the last viewController on the stack
var controllers : [UIViewController] = self.navigationController!.viewControllers

var controller = storyboard.instantiateViewController(withIdentifier: "B")
// Remember to do the things here you'd do in prepareForSegue!
controllers.append(controller)

controller = storyboard.instantiateViewController(withIdentifier: "C")
controllers.append(controller)

self.navigationController!.setViewControllers(controllers, animated: true)
```

Let me know what you think!