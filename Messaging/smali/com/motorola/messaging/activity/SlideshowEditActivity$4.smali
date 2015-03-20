.class Lcom/motorola/messaging/activity/SlideshowEditActivity$4;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$4;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$4;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$4;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$1000(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I
    invoke-static {v1, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$402(Lcom/motorola/messaging/activity/SlideshowEditActivity;I)I

    .line 1165
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$4;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$4;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$1000(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/activity/SlideshowEditActivity;->changeText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$1100(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$4;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 1167
    return-void
.end method
