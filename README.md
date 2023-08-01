# diginext-actions

Run Github Actions to deploy apps to Diginext platform or any Kubernetes clusters.

## Inputs

| Name            | Required | Description                                                                                      |
|:---------------:|:--------:|:------------------------------------------------------------------------------------------------:|
| `api_key`       | `true`   | Specify the API access token to authenticate with Diginext platform.                             |
| `cluster`       | `true`   | Specify the slug of targeted cluster to deploy.                                                  |
| `registry`      | `true`   | Specify the slug of container registry to store the container image.                             |
| `dx_version`    | `false`  | Default is `latest`.                                                                             |
| `workspace_url` | `false`  | Custom workspace URL (eg. self-hosted workspace), default is `https://hobby.diginext.site`.      |
| `deploy_env`    | `false`  | Specify the deploy environment, default is `dev`.                                                |
| `port`          | `false`  | Port to expose the app, default is `3000`.                                                       |

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

