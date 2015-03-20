.class final Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AssistedDialingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AssistedDialingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter;"
    }
.end annotation


# instance fields
.field isActionMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;, "Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;->isActionMode:Z

    .line 317
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;, "Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;->isActionMode:Z

    .line 312
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 321
    .local p0, "this":Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;, "Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, "view":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;->isActionMode:Z

    if-eqz v1, :cond_0

    .line 323
    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 327
    :goto_0
    return-object v0

    .line 325
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method setActionMode(Z)V
    .locals 0
    .param p1, "actionMode"    # Z

    .prologue
    .line 307
    .local p0, "this":Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;, "Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;->isActionMode:Z

    .line 308
    return-void
.end method
