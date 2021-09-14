# Temporary Branch Action

> Creates a temporary branch and deletes it before the workflow finishes.

## Usage

```yaml
- name: Create Temporary Branch
  uses: carlsberg/temporary-branch-action@1.1.1
```

## Example

See the example in [.github/workflows/test.yml](.github/workflows/test.yml).

## Inputs

| Name   | Description                                                       | Default |
| ------ | ----------------------------------------------------------------- | ------- |
| `base` | Base branch to create the temporary branch from                   | -       |
| `push` | Specify if the temporary branch should be pushed to origin or not | `false` |

## Outputs

| Name     | Description                  |
| -------- | ---------------------------- |
| `branch` | Name of the temporary branch |

## Contributing

Please, see [CONTRIBUTING.md](CONTRIBUTING.md) to learn how you can contribute
to this repository. Every contribution is welcome!

## License

This project is released under the [MIT License](LICENSE).
