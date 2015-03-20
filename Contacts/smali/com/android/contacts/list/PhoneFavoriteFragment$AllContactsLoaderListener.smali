.class Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllContactsLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field isContactsSearchEnabled:Z

.field final synthetic this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->isContactsSearchEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;
    .param p2, "x1"    # Lcom/android/contacts/list/PhoneFavoriteFragment$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 131
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, "loader":Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneNumberListAdapter;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 134
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->isContactsSearchEnabled:Z

    .line 136
    iget-boolean v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->isContactsSearchEnabled:Z

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "1=?"

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-1"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 143
    :cond_0
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneNumberListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 150
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    # invokes: Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$600(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    .line 151
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$900(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$1000(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
