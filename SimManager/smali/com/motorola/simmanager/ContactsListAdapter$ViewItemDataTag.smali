.class final Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;
.super Ljava/lang/Object;
.source "ContactsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/ContactsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewItemDataTag"
.end annotation


# instance fields
.field mId:I

.field mPhotoId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method refresh(Landroid/database/Cursor;I)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "mode"    # I

    .prologue
    .line 199
    invoke-static {p1, p2}, Lcom/motorola/simmanager/SMUtils;->getIdColumnIndex(Landroid/database/Cursor;I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;->mId:I

    .line 200
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 201
    const-string v0, "photo_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;->mPhotoId:I

    .line 203
    :cond_0
    return-void
.end method
