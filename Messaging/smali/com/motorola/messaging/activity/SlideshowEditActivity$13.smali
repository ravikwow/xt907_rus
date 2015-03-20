.class Lcom/motorola/messaging/activity/SlideshowEditActivity$13;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$doNotShowAgainCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$imageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/widget/CheckBox;Landroid/net/Uri;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;->val$doNotShowAgainCheckbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;->val$imageUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;->val$doNotShowAgainCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->setMmsShowLocationWarning(Z)V

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;->val$imageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z
    invoke-static {v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$700(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Z

    move-result v3

    # invokes: Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMediaFromUri(ILandroid/net/Uri;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$800(Lcom/motorola/messaging/activity/SlideshowEditActivity;ILandroid/net/Uri;Z)V

    .line 1366
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1367
    return-void
.end method
