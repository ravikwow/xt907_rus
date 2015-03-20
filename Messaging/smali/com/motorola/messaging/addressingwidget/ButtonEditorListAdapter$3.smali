.class final Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$3;
.super Ljava/lang/Object;
.source "ButtonEditorListAdapter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 194
    new-instance v0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$3;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 198
    new-array v0, p1, [Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$3;->newArray(I)[Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    move-result-object v0

    return-object v0
.end method
