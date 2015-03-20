.class Lcom/motorola/blur/util/database/DatabaseContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/util/database/DatabaseContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/util/database/DatabaseContentProvider;


# direct methods
.method constructor <init>(Lcom/motorola/blur/util/database/DatabaseContentProvider;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider$DatabaseHelper;->this$0:Lcom/motorola/blur/util/database/DatabaseContentProvider;

    .line 112
    const/4 v0, 0x0

    iget v1, p1, Lcom/motorola/blur/util/database/DatabaseContentProvider;->mDbVersion:I

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 113
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider$DatabaseHelper;->this$0:Lcom/motorola/blur/util/database/DatabaseContentProvider;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider$DatabaseHelper;->this$0:Lcom/motorola/blur/util/database/DatabaseContentProvider;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider$DatabaseHelper;->this$0:Lcom/motorola/blur/util/database/DatabaseContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z

    .line 123
    return-void
.end method
