.class Lcom/motorola/messaging/conversation/ThreadFilter$PhoneCursor;
.super Landroid/database/CursorWrapper;
.source "ThreadFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/conversation/ThreadFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneCursor"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 263
    iput-object p1, p0, Lcom/motorola/messaging/conversation/ThreadFilter$PhoneCursor;->mCursor:Landroid/database/Cursor;

    .line 264
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/motorola/messaging/conversation/ThreadFilter$PhoneCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
