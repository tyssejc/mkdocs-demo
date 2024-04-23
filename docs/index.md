# Data Layer Documentation
A marketing data layer serves as a central hub for collecting, organizing, and distributing data related to marketing activities on a website or digital platform. For software engineers, it's essentially a structured framework that standardizes the way marketing data is captured and managed across various tools and platforms.

The purpose of a data layer specification is to define a standardized framework for capturing, structuring, and transmitting data related to user interactions and behaviors on digital platforms. It serves as a blueprint that guides the implementation of a data layer, ensuring consistency in data collection methods and formats across different tools and systems. By establishing clear guidelines, a data layer specification facilitates seamless integration, data interoperability, and effective analytics for informed decision-making in marketing and web development.

## What is a (marketing) data layer?
A marketing data layer is a centralized queue for receiving event messages communicating how users interact with a web page in order to facilitate analytics, third-party marketing tags and tools.

### The data layer queue
The data layer queue is implemented as a simple JavaScript array in the global scope of a page.

```js
window.dataLayer = window.dataLayer || [];
```

### Event messages
As a user interacts with a site, **event messages** are added to the queue as objects via the `Array.prototype.push()` method.

Each event message has at least one required property (`event`, a unique event name that distinguishes it from other event message types).

```js
dataLayer.push({
    event: 'page load completed'
});
```

However most events contain other properties, often nested by context.

```js
dataLayer.push({
    event: 'page load started',
    page: {
        pageName: 'site:home'
    }
});
```

## Resources
