### DC App docs



#### env.constants.json
Here is an example of this file

```json
{
  "constants": {
    "instaAccessToken": "**************",
    "instaClientId": "*******************",
    "instaSecret": "*****************"
  }
}
```

the `"constants"` key is importants , inside it each key will be injected in angular as a constant, the file name is
important aswell , it will be converted to module name , which is injected in index.module.coffee ( index.module.js )