# Page Load Completed

The **Page Load Completed** event message should be pushed when the page is finished loading and data is ready to be collected. The purpose of this event is to trigger a data collection beacon.

## Code example

```js
dataLayer.push({
    event: "page load completed"
})
```

## Properties

None.