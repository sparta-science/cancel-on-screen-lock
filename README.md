# Cancel workflow when Mac screen is locked

Useful to cancel workflow early (before checkout) when self-hosted macOS runner has screen locked.

    - name: Cancel on Screen Lock
      uses: sparta-science/cancel-on-screen-lock@v1
      with:
        repo-token: ${{ github.token }}

# Use with UI Tests

Xcode UI Tests are unable to interact with the macOS or iOS apps when screen is locked. This action helps to abort early without triggering a failure.
