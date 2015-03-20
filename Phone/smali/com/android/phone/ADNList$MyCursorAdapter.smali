.class public Lcom/android/phone/ADNList$MyCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/SimpleCursorAdapter;"
    }
.end annotation


# instance fields
.field isActionMode:Z

.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ADNList;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 292
    .local p0, "this":Lcom/android/phone/ADNList$MyCursorAdapter;, "Lcom/android/phone/ADNList$MyCursorAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/phone/ADNList$MyCursorAdapter;->this$0:Lcom/android/phone/ADNList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 293
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ADNList$MyCursorAdapter;->isActionMode:Z

    .line 294
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 297
    .local p0, "this":Lcom/android/phone/ADNList$MyCursorAdapter;, "Lcom/android/phone/ADNList$MyCursorAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 298
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 301
    .local p0, "this":Lcom/android/phone/ADNList$MyCursorAdapter;, "Lcom/android/phone/ADNList$MyCursorAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, "view":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/phone/ADNList$MyCursorAdapter;->isActionMode:Z

    if-eqz v1, :cond_0

    .line 303
    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 307
    :goto_0
    return-object v0

    .line 305
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
