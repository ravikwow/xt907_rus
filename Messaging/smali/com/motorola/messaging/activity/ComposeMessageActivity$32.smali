.class Lcom/motorola/messaging/activity/ComposeMessageActivity$32;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 2793
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$32;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2795
    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    .line 2796
    .local v0, "adapter":Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$32;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->getButtonId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->getSelectedAddresses()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->updateButton(JLjava/util/Set;)V

    .line 2797
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2798
    return-void
.end method
