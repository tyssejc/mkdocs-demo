# Page Load Started

The **Page Load Started** event message should be pushed as soon as all the values for the event's payload are available. The purpose of this event is to set Adobe Analytics tracking variables.

## Code example

```js
dataLayer.push({
    event: "page load started",
    page: {
        pageName: "site:home"
    }
})
```

## Properties

|Property|Type|Required|Description|Example|
|---|---|---|---|---|
|pageName|string|yes|The page name.|`site:home`|