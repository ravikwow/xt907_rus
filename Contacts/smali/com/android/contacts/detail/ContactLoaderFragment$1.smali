.class Lcom/android/contacts/detail/ContactLoaderFragment$1;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 222
    const-string v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 224
    .local v2, "lookupUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactLoader:Lcom/android/contacts/ContactLoader;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactLoader:Lcom/android/contacts/ContactLoader;
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$002(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader;

    .line 228
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    new-instance v0, Lcom/android/contacts/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "for_export_only"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    # setter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactLoader:Lcom/android/contacts/ContactLoader;
    invoke-static {v7, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$002(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader;

    .line 232
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactLoader:Lcom/android/contacts/ContactLoader;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 3
    .param p2, "data"    # Lcom/android/contacts/ContactLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;",
            "Lcom/android/contacts/ContactLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$200(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getRequestedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different URI: requested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$200(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :goto_0
    return-void

    .line 243
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_0
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load contact"

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 247
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->isNotFound()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/contacts/ContactLoader;

    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$402(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$500(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    if-nez v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$500(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onContactNotFound()V

    .line 262
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 251
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # setter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$402(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    goto :goto_1

    .line 258
    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$500(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 219
    check-cast p2, Lcom/android/contacts/ContactLoader$Result;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactLoaderFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    return-void
.end method
