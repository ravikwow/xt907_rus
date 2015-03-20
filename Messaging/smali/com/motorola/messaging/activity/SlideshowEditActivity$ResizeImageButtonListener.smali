.class Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageButtonListener;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeImageButtonListener"
.end annotation


# instance fields
.field private final mImageUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/net/Uri;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageButtonListener;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageButtonListener;->mImageUri:Landroid/net/Uri;

    .line 1054
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1057
    new-instance v0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageButtonListener;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageButtonListener;->mImageUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1058
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1059
    return-void
.end method
