.class Lcom/motorola/messaging/activity/ContactsGridActivity$1;
.super Ljava/lang/Object;
.source "ContactsGridActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ContactsGridActivity;->onContactUpdated(Lcom/motorola/messaging/contact/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ContactsGridActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$1;->this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$1;->this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;

    # getter for: Lcom/motorola/messaging/activity/ContactsGridActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ContactsGridActivity;->access$100(Lcom/motorola/messaging/activity/ContactsGridActivity;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$1;->this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;

    # getter for: Lcom/motorola/messaging/activity/ContactsGridActivity;->mContactList:Lcom/motorola/messaging/contact/ContactList;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ContactsGridActivity;->access$000(Lcom/motorola/messaging/activity/ContactsGridActivity;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$1;->this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/contact/ContactList;->getFormattedListName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$1;->this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;

    # getter for: Lcom/motorola/messaging/activity/ContactsGridActivity;->mAdapter:Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ContactsGridActivity;->access$200(Lcom/motorola/messaging/activity/ContactsGridActivity;)Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$1;->this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;

    # getter for: Lcom/motorola/messaging/activity/ContactsGridActivity;->mAdapter:Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ContactsGridActivity;->access$200(Lcom/motorola/messaging/activity/ContactsGridActivity;)Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 161
    :cond_0
    return-void
.end method
