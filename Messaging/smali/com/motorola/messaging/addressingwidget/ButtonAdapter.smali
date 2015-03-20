.class public abstract Lcom/motorola/messaging/addressingwidget/ButtonAdapter;
.super Landroid/widget/BaseAdapter;
.source "ButtonAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getButtonLabel(I)Ljava/lang/String;
.end method

.method public abstract getButtonPicture(I)Landroid/graphics/Bitmap;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isValid(I)Z
.end method

.method public abstract onButtonDeleted(Ljava/lang/Object;)V
.end method

.method public abstract onTextReady(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method
