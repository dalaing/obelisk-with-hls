This is a sample repository so I can keep track of how I'm getting Obelisk and Haskell Language Server to work together.

The relevant pieces to look at are:

- default.nix
- nix/hls.nix
- hie.yaml (which there is other tooling to generate)

And then to use it:

```
ob shell
code .   -- or whichever editor you are using
```

Later versions might use `direnv` or similar, I'm having too much fun playing with Rhyolite stuff to push this much further right now.
