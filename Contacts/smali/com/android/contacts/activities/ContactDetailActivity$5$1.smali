.class Lcom/android/contacts/activities/ContactDetailActivity$5$1;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity$5;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

.field final synthetic val$result:Lcom/android/contacts/ContactLoader$Result;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity$5;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    # setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1, v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$402(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 298
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$302(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.yellowpages.refreshyc"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "bIntent":Landroid/content/Intent;
    const-string v1, "contacturl"

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 307
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # invokes: Lcom/android/contacts/activities/ContactDetailActivity;->setupTitle()V
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$500(Lcom/android/contacts/activities/ContactDetailActivity;)V

    .line 308
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$200(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setContactData(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method
