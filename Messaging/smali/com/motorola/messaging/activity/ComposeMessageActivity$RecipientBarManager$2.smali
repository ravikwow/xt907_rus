.class Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->inflateWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V
    .locals 0

    .prologue
    .line 5840
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$2;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPickerButtonClicked()V
    .locals 3

    .prologue
    .line 5842
    new-instance v0, Landroid/content/Intent;

    const-string v1, "motorola.intent.ACTION_MULTIPLE_PICK"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5843
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$2;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v2, 0x1a

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5844
    return-void
.end method
