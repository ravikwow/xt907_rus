.class Lcom/android/contacts/activities/ContactDetailActivity$3$1;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity$3;->onDetailsLoaded(Lcom/android/contacts/model/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

.field final synthetic val$result:Lcom/android/contacts/model/Contact;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity$3;Lcom/android/contacts/model/Contact;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->val$result:Lcom/android/contacts/model/Contact;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->val$result:Lcom/android/contacts/model/Contact;

    # setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$102(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;

    .line 233
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->val$result:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$002(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 234
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->invalidateOptionsMenu()V

    .line 235
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # invokes: Lcom/android/contacts/activities/ContactDetailActivity;->setupTitle()V
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$200(Lcom/android/contacts/activities/ContactDetailActivity;)V

    .line 237
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->isSafeToCommitTransactions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setContactData(Lcom/android/contacts/model/Contact;)V

    goto :goto_0
.end method
