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
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 187
    const-string v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 188
    .local v2, "lookupUri":Landroid/net/Uri;
    new-instance v0, Lcom/android/contacts/model/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v1

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZZ)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 3
    .param p2, "data"    # Lcom/android/contacts/model/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;",
            "Lcom/android/contacts/model/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getRequestedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different URI: requested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

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

    .line 220
    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    :cond_0
    :goto_0
    return-void

    .line 200
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load contact"

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 204
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isNotFound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/contacts/model/ContactLoader;

    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    invoke-virtual {p1}, Lcom/android/contacts/model/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    if-nez v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onContactNotFound()V

    .line 219
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 208
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # setter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;

    goto :goto_1

    .line 215
    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/model/Contact;)V

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 184
    check-cast p2, Lcom/android/contacts/model/Contact;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactLoaderFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    return-void
.end method
