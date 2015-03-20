.class Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "TosActivity.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/privacy/TosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityLinkSpan"
.end annotation


# instance fields
.field private mTextId:I

.field private mTitleId:I

.field final synthetic this$0:Lcom/motorola/blur/privacy/TosActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/privacy/TosActivity;II)V
    .locals 0
    .param p2, "titleId"    # I
    .param p3, "textId"    # I

    .prologue
    .line 202
    iput-object p1, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 203
    iput p2, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->mTitleId:I

    .line 204
    iput p3, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->mTextId:I

    .line 205
    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/privacy/TosActivity;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->mTitleId:I

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->mTextId:I

    .line 200
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0xb

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    iget v1, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->mTitleId:I

    iget v2, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->mTextId:I

    # invokes: Lcom/motorola/blur/privacy/TosActivity;->launchReader(II)V
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/privacy/TosActivity;->access$000(Lcom/motorola/blur/privacy/TosActivity;II)V

    .line 209
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 221
    iget v0, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->mTitleId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/motorola/blur/privacy/TosActivity$ActivityLinkSpan;->mTextId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    return-void
.end method
