.class Lcom/motorola/messaging/activity/SlideshowEditActivity$11;
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


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V
    .locals 0

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$11;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$11;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$702(Lcom/motorola/messaging/activity/SlideshowEditActivity;Z)Z

    .line 1334
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1335
    return-void
.end method
