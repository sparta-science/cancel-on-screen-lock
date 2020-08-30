# Cancel workflow when Mac screen is locked

Useful to cancel workflow early (before checkout) when self-hosted macOS runner has screen locked.

    - uses: sparta-science/cancel-on-screen-lock@v0.2
      with:
        repo-token: ${{ github.token }}

