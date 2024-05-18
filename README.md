# diginext-actions

Run Github Actions to deploy apps to Diginext platform or any Kubernetes clusters.

## Inputs

|      Name       | Required |                                            Description                                            |
| :-------------: | :------: | :-----------------------------------------------------------------------------------------------: |
|    `api_key`    |  `true`  |               Specify the API access token to authenticate with Diginext platform.                |
|    `cluster`    |  `true`  |                          Specify the slug of targeted cluster to deploy.                          |
|   `registry`    |  `true`  |               Specify the slug of container registry to store the container image.                |
|  `dx_version`   | `false`  |                                       Default is `latest`.                                        |
| `workspace_url` | `false`  |       Custom workspace URL (eg. self-hosted workspace), default is `https://app.dxup.dev`.        |
|  `deploy_env`   | `false`  |                         Specify the deploy environment, default is `dev`.                         |
|     `port`      | `false`  |                            Port to expose the app, default is `3000`.                             |
|     `debug`     | `false`  | Enable DEBUG mode (Caution: sensitive data could be exposed during debug mude), default: `false`. |
|    `detach`     | `false`  |                      Run deploy command in detach mode, default is `false`.                       |
|   `roll_out`    | `false`  |  When deploy to `prod` it will skip `prerelelease` environment and roll out, default is `false`.  |

## Usage

```yaml
    - name: Deploy to Diginext
      uses: digitopvn/diginext-actions@v0
      with:
        # dx_version: 3.21.2
        # workspace_url: https://hobby.diginext.site
        api_key: ${{ secrets.DX_API_KEY }} # get API key from Diginext dashboard
        cluster: default-cluster # get cluster slug from Diginext dashboard
        registry: default-container-registry # get registry slug from Diginext dashboard
        # deploy_env: prod
        # port: "3000"
```

## Credits

