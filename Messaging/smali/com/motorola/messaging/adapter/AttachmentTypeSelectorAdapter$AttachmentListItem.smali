.class public Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;
.super Ljava/lang/Object;
.source "AttachmentTypeSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentListItem"
.end annotation


# instance fields
.field private mCommand:I

.field private mItem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "command"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;->mItem:Ljava/lang/String;

    .line 119
    iput p2, p0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;->mCommand:I

    .line 120
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;->mCommand:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;->mItem:Ljava/lang/String;

    return-object v0
.end method
