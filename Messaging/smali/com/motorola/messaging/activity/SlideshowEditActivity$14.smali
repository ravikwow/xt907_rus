.class Lcom/motorola/messaging/activity/SlideshowEditActivity$14;
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


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$14;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$14;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$14;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1377
    return-void
.end method
