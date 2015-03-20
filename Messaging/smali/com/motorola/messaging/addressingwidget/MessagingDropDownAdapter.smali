.class public abstract Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessagingDropDownAdapter.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$1;,
        Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;,
        Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;,
        Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final LOCAL_LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapterContext:Landroid/content/Context;

.field private mCurrentConstraint:Ljava/lang/CharSequence;

.field private mCursorFilter:Landroid/widget/Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 34
    const-class v1, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->TAG:Ljava/lang/String;

    .line 35
    sput-boolean v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->DEBUG:Z

    .line 36
    sget-boolean v1, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 33
    new-instance v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;

    invoke-direct {v0, p0, p0}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;Landroid/widget/CursorAdapter;)V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mCursorFilter:Landroid/widget/Filter;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mAdapterContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0, p0}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 48
    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private getEncodedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "encodedString"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, "separatorIndex":I
    if-lez v0, :cond_0

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 279
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    .line 53
    .local v5, "holder":Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;
    iget-object v4, v5, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->contactName:Landroid/widget/TextView;

    .line 54
    .local v4, "contactName":Landroid/widget/TextView;
    iget-object v3, v5, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->contactInfo:Landroid/widget/TextView;

    .line 55
    .local v3, "contactInfo":Landroid/widget/TextView;
    iget-object v2, v5, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->contactAddress:Landroid/widget/TextView;

    .line 57
    .local v2, "contactAddress":Landroid/widget/TextView;
    new-instance v9, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;

    iget-object v12, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mAdapterContext:Landroid/content/Context;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-direct {v9, p0, v12, v0, v13}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;Landroid/content/Context;Landroid/database/Cursor;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$1;)V

    .line 58
    .local v9, "parser":Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;
    invoke-virtual {v9}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "address":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 61
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    if-eqz v8, :cond_0

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 68
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_1
    # invokes: Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getInfoLabel()Ljava/lang/CharSequence;
    invoke-static {v9}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->access$100(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 75
    .local v7, "info":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 76
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :goto_2
    iget-object v6, v5, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 85
    .local v6, "icon":Landroid/widget/ImageView;
    invoke-virtual {v9}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v12

    if-nez v12, :cond_5

    const-string v12, ""

    :goto_3
    iput-object v12, v5, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->uri:Ljava/lang/String;

    .line 86
    invoke-virtual {p0, v9, v5}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->tryFetchPhoto(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;)V

    .line 87
    sget-boolean v12, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->LOCAL_LOG:Z

    if-eqz v12, :cond_1

    .line 88
    sget-object v12, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    invoke-virtual {v9}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getPhotoBytes()[B

    move-result-object v11

    .line 91
    .local v11, "photoBytes":[B
    if-eqz v11, :cond_6

    .line 93
    const/4 v12, 0x0

    array-length v13, v11

    invoke-static {v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 95
    .local v10, "photo":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    .end local v10    # "photo":Landroid/graphics/Bitmap;
    :goto_4
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    return-void

    .line 64
    .end local v6    # "icon":Landroid/widget/ImageView;
    .end local v7    # "info":Ljava/lang/CharSequence;
    .end local v11    # "photoBytes":[B
    :cond_2
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_3
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 79
    .restart local v7    # "info":Ljava/lang/CharSequence;
    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 85
    .restart local v6    # "icon":Landroid/widget/ImageView;
    :cond_5
    invoke-virtual {v9}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 97
    .restart local v11    # "photoBytes":[B
    :cond_6
    invoke-static {}, Lcom/motorola/messaging/contact/Contact;->getDefaultAvatar()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 132
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mAdapterContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;Landroid/content/Context;Landroid/database/Cursor;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$1;)V

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mCursorFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getParser(Ljava/lang/String;I)Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;
    .locals 5
    .param p1, "encodedString"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 143
    if-ltz p2, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 145
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    new-instance v2, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;

    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mAdapterContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, v0, v3}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;Landroid/content/Context;Landroid/database/Cursor;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$1;)V

    .line 147
    .local v2, "parser":Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;
    invoke-virtual {v2}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->getEncodedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "parser":Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 120
    new-instance v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;-><init>()V

    .line 121
    .local v0, "holder":Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mAdapterContext:Landroid/content/Context;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 123
    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->contactName:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->contactInfo:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->contactAddress:Landroid/widget/TextView;

    .line 126
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    return-object v1
.end method

.method protected tryFetchPhoto(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;
    .param p2, "holder"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    .prologue
    .line 162
    return-void
.end method
