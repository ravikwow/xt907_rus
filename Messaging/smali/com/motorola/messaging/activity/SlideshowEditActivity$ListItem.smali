.class public Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItem"
.end annotation


# instance fields
.field private mCommand:I

.field private mItem:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V
    .locals 0
    .param p2, "item"    # Ljava/lang/String;
    .param p3, "command"    # I

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1494
    iput-object p2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;->mItem:Ljava/lang/String;

    .line 1495
    iput p3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;->mCommand:I

    .line 1496
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 1499
    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;->mCommand:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;->mItem:Ljava/lang/String;

    return-object v0
.end method
