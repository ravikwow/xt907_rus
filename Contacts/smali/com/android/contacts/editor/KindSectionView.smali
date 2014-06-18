.class public Lcom/android/contacts/editor/KindSectionView;
.super Landroid/widget/LinearLayout;
.source "KindSectionView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# instance fields
.field private mAddFieldFooter:Landroid/view/View;

.field private mEditors:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKind:Lcom/android/contacts/model/dataitem/DataKind;

.field private mReadOnly:Z

.field private final mRunWhenWindowFocused:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/contacts/model/RawContactDelta;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleString:Ljava/lang/String;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/KindSectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/KindSectionView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/KindSectionView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/KindSectionView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/KindSectionView;->runWhenWindowFocused(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createEditorView(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Landroid/view/View;
    .locals 8
    .param p1, "entry"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget v2, v2, Lcom/android/contacts/model/dataitem/DataKind;->editorLayoutResourceId:I

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 198
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->isEnabled()Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    instance-of v1, v7, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 201
    check-cast v0, Lcom/android/contacts/editor/Editor;

    .line 202
    .local v0, "editor":Lcom/android/contacts/editor/Editor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-boolean v4, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 204
    invoke-interface {v0, p0}, Lcom/android/contacts/editor/Editor;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 206
    .end local v0    # "editor":Lcom/android/contacts/editor/Editor;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 207
    return-object v7

    .line 191
    .end local v7    # "view":Landroid/view/View;
    :catch_0
    move-exception v6

    .line 192
    .local v6, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot allocate editor with layout resource ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget v3, v3, Lcom/android/contacts/model/dataitem/DataKind;->editorLayoutResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for MIME type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v3, v3, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEmptyEditors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "emptyEditorViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    move-object v3, v2

    .line 276
    check-cast v3, Lcom/android/contacts/editor/Editor;

    invoke-interface {v3}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method private hasEmptyEditor()Z
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->getEmptyEditors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmptyNoop(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Z
    .locals 6
    .param p1, "item"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .prologue
    const/4 v5, 0x0

    .line 214
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isNoop()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 221
    :goto_0
    return v4

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 216
    .local v1, "fieldCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 217
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-object v0, v4, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 218
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    .line 216
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    .end local v0    # "column":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private postWhenWindowFocused(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 336
    new-instance v0, Lcom/android/contacts/editor/KindSectionView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/editor/KindSectionView$2;-><init>(Lcom/android/contacts/editor/KindSectionView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method

.method private runWhenWindowFocused(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateEmptyEditors()V
    .locals 5

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->getEmptyEditors()Ljava/util/List;

    move-result-object v1

    .line 258
    .local v1, "emptyEditors":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 259
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 262
    .local v0, "emptyEditorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 267
    .end local v0    # "emptyEditorView":Landroid/view/View;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private updateSectionVisible()V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setVisibility(I)V

    .line 226
    return-void

    .line 225
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addItem()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 345
    const/4 v2, 0x0

    .line 347
    .local v2, "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget v3, v3, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    if-ne v3, v4, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 380
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 354
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 355
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    check-cast v2, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 360
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    .restart local v2    # "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_1
    if-nez v2, :cond_2

    .line 361
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    invoke-static {v3, v4}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v2

    .line 364
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Landroid/view/View;

    move-result-object v1

    .line 365
    .local v1, "newField":Landroid/view/View;
    instance-of v3, v1, Lcom/android/contacts/editor/Editor;

    if-eqz v3, :cond_3

    .line 366
    new-instance v3, Lcom/android/contacts/editor/KindSectionView$3;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/editor/KindSectionView$3;-><init>(Lcom/android/contacts/editor/KindSectionView;Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/editor/KindSectionView;->postWhenWindowFocused(Ljava/lang/Runnable;)V

    .line 376
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateSectionVisible()V

    goto :goto_0
.end method

.method public getEditorCount()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getKind()Lcom/android/contacts/model/dataitem/DataKind;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 297
    .local v1, "view":Landroid/view/View;
    check-cast v1, Lcom/android/contacts/editor/Editor;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    const/4 v2, 0x0

    .line 301
    :goto_1
    return v2

    .line 295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 2
    .param p1, "editor"    # Lcom/android/contacts/editor/Editor;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->clearAllFields()V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setDrawingCacheEnabled(Z)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    const v0, 0x7f0600d4

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0600fa

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 101
    const v0, 0x7f0600fb

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/KindSectionView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/KindSectionView$1;-><init>(Lcom/android/contacts/editor/KindSectionView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public onRequest(I)V
    .locals 1
    .param p1, "request"    # I

    .prologue
    .line 128
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible(Z)V

    .line 131
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 311
    if-eqz p1, :cond_1

    .line 312
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 313
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 315
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 317
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public rebuildFromState()V
    .locals 5

    .prologue
    .line 165
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 168
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/RawContactDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v1

    .line 170
    .local v1, "hasEntries":Z
    if-eqz v1, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 173
    .local v0, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->isEmptyNoop(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Landroid/view/View;

    goto :goto_0

    .line 179
    .end local v0    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 73
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 75
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_1
    return-void

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setState(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .param p2, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p3, "readOnly"    # Z
    .param p4, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const/4 v2, -0x1

    .line 134
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    .line 135
    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/RawContactDelta;

    .line 136
    iput-boolean p3, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    .line 137
    iput-object p4, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 139
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setId(I)V

    .line 142
    iget v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->rebuildFromState()V

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible(Z)V

    .line 149
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateSectionVisible()V

    .line 150
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTitleVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 157
    const v0, 0x7f0600f9

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    return-void

    .line 157
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected updateAddFooterVisible(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateEmptyEditors()V

    .line 234
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->hasEmptyEditor()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    invoke-static {v0, v1}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    if-eqz p1, :cond_0

    .line 236
    invoke-static {}, Lcom/android/contacts/editor/EditorAnimator;->getInstance()Lcom/android/contacts/editor/EditorAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/EditorAnimator;->showAddFieldFooter(Landroid/view/View;)V

    .line 248
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 243
    :cond_1
    if-eqz p1, :cond_2

    .line 244
    invoke-static {}, Lcom/android/contacts/editor/EditorAnimator;->getInstance()Lcom/android/contacts/editor/EditorAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/EditorAnimator;->hideAddFieldFooter(Landroid/view/View;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddFieldFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
