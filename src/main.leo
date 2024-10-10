// The 'bomb_chess2' program.
program bomb_chess2.aleo {

    // A non-piece has square set to 64field.
    struct PlacedPiece {
        square: field,
        piece: field,
    }

    struct Board {
        white: [PlacedPiece; 16],
        black: [PlacedPiece; 16],
        ply: field,
        odd_ply: bool,
    }

    const EMPTY: field = 0field;
    const PAWN: field = 1field;
    const ROOK: field = 2field;
    const KNIGHT: field = 3field;
    const BISHOP: field = 4field;
    const QUEEN: field = 5field;
    const KING: field = 6field;

    const ONGOING: field = 0field;
    const WHITE_WON: field = 1field;
    const BLACK_WON: field = 2field;
    const TIE: field = 3field;

    const UP: field = 0field;
    const UPLEFT: field = 1field;
    const LEFT: field = 2field;
    const DOWNLEFT: field = 3field;
    const DOWN: field = 4field;
    const DOWNRIGHT: field = 5field;
    const RIGHT: field = 6field;
    const UPRIGHT: field = 7field;

    struct Game {
        white: address,
        black: address,
        board: Board,
        status: field,
    }

    record PlayerState {
        owner: address,
        game: Game,
        bomb: field,
    }

    record GameToken {
        owner: address,
        game: Game,
    }

    function access(pieces: [PlacedPiece; 16], square: field) -> field {
        for i: u8 in 0u8..16u8 {
            let pp: PlacedPiece = pieces[i];
            if square == pp.square {
                return pp.piece;
            }
        }
        return EMPTY;
    }
    
    function do_move(pieces: [PlacedPiece; 16], from_square: field, to_square: field) -> [PlacedPiece; 16] {
        assert(from_square < 64field);
        assert(to_square <= 64field);

        let pp0: PlacedPiece = pieces[0u8];
        let pp0_square: field = pp0.square;
        let pp0_piece: field = pp0.piece;
        let pp1: PlacedPiece = pieces[1u8];
        let pp1_square: field = pp1.square;
        let pp1_piece: field = pp1.piece;
        let pp2: PlacedPiece = pieces[2u8];
        let pp2_square: field = pp2.square;
        let pp2_piece: field = pp2.piece;
        let pp3: PlacedPiece = pieces[3u8];
        let pp3_square: field = pp3.square;
        let pp3_piece: field = pp3.piece;
        let pp4: PlacedPiece = pieces[4u8];
        let pp4_square: field = pp4.square;
        let pp4_piece: field = pp4.piece;
        let pp5: PlacedPiece = pieces[5u8];
        let pp5_square: field = pp5.square;
        let pp5_piece: field = pp5.piece;
        let pp6: PlacedPiece = pieces[6u8];
        let pp6_square: field = pp6.square;
        let pp6_piece: field = pp6.piece;
        let pp7: PlacedPiece = pieces[7u8];
        let pp7_square: field = pp7.square;
        let pp7_piece: field = pp7.piece;
        let pp8: PlacedPiece = pieces[8u8];
        let pp8_square: field = pp8.square;
        let pp8_piece: field = pp8.piece;
        let pp9: PlacedPiece = pieces[9u8];
        let pp9_square: field = pp9.square;
        let pp9_piece: field = pp9.piece;
        let pp10: PlacedPiece = pieces[10u8];
        let pp10_square: field = pp10.square;
        let pp10_piece: field = pp10.piece;
        let pp11: PlacedPiece = pieces[11u8];
        let pp11_square: field = pp11.square;
        let pp11_piece: field = pp11.piece;
        let pp12: PlacedPiece = pieces[12u8];
        let pp12_square: field = pp12.square;
        let pp12_piece: field = pp12.piece;
        let pp13: PlacedPiece = pieces[13u8];
        let pp13_square: field = pp13.square;
        let pp13_piece: field = pp13.piece;
        let pp14: PlacedPiece = pieces[14u8];
        let pp14_square: field = pp14.square;
        let pp14_piece: field = pp14.piece;
        let pp15: PlacedPiece = pieces[15u8];
        let pp15_square: field = pp15.square;
        let pp15_piece: field = pp15.piece;

        if from_square == pp0_square {
            pp0_square = to_square;
        } else if from_square == pp1_square {
           pp1_square = to_square;
        } else if from_square == pp2_square {
           pp2_square = to_square;
        } else if from_square == pp3_square {
           pp3_square = to_square;
        } else if from_square == pp4_square {
           pp4_square = to_square;
        } else if from_square == pp5_square {
           pp5_square = to_square;
        } else if from_square == pp6_square {
           pp6_square = to_square;
        } else if from_square == pp7_square {
           pp7_square = to_square;
        } else if from_square == pp8_square {
           pp8_square = to_square;
        } else if from_square == pp9_square {
           pp9_square = to_square;
        } else if from_square == pp10_square {
           pp10_square = to_square;
        } else if from_square == pp11_square {
           pp11_square = to_square;
        } else if from_square == pp12_square {
           pp12_square = to_square;
        } else if from_square == pp13_square {
           pp13_square = to_square;
        } else if from_square == pp14_square {
           pp14_square = to_square;
        } else if from_square == pp15_square {
           pp15_square = to_square;
        } else {
            assert(false);
        }

        return [
            PlacedPiece { square: pp0_square, piece: pp0_piece, },
            PlacedPiece { square: pp1_square, piece: pp1_piece, },
            PlacedPiece { square: pp2_square, piece: pp2_piece, },
            PlacedPiece { square: pp3_square, piece: pp3_piece, },
            PlacedPiece { square: pp4_square, piece: pp4_piece, },
            PlacedPiece { square: pp5_square, piece: pp5_piece, },
            PlacedPiece { square: pp6_square, piece: pp6_piece, },
            PlacedPiece { square: pp7_square, piece: pp7_piece, },
            PlacedPiece { square: pp8_square, piece: pp8_piece, },
            PlacedPiece { square: pp9_square, piece: pp9_piece, },
            PlacedPiece { square: pp10_square, piece: pp1_piece, },
            PlacedPiece { square: pp11_square, piece: pp1_piece, },
            PlacedPiece { square: pp12_square, piece: pp1_piece, },
            PlacedPiece { square: pp13_square, piece: pp1_piece, },
            PlacedPiece { square: pp14_square, piece: pp1_piece, },
            PlacedPiece { square: pp15_square, piece: pp1_piece, },
        ];
    }

    transition invite(opponent: address, bomb: field) -> (PlayerState, GameToken) {
        assert(bomb < 64field);

        let white_pieces: [PlacedPiece; 16] = [
            PlacedPiece { square: 0field, piece: PAWN, },
            PlacedPiece { square: 1field, piece: PAWN, },
            PlacedPiece { square: 2field, piece: PAWN, },
            PlacedPiece { square: 3field, piece: PAWN, },
            PlacedPiece { square: 4field, piece: PAWN, },
            PlacedPiece { square: 5field, piece: PAWN, },
            PlacedPiece { square: 6field, piece: PAWN, },
            PlacedPiece { square: 7field, piece: PAWN, },
            PlacedPiece { square: 8field, piece: ROOK, },
            PlacedPiece { square: 9field, piece: KNIGHT, },
            PlacedPiece { square: 10field, piece: BISHOP, },
            PlacedPiece { square: 11field, piece: QUEEN, },
            PlacedPiece { square: 12field, piece: KING, },
            PlacedPiece { square: 13field, piece: BISHOP, },
            PlacedPiece { square: 14field, piece: KNIGHT, },
            PlacedPiece { square: 15field, piece: ROOK, },
        ];

        let black_pieces: [PlacedPiece; 16] = [
            PlacedPiece { square: 48field, piece: PAWN, },
            PlacedPiece { square: 49field, piece: PAWN, },
            PlacedPiece { square: 50field, piece: PAWN, },
            PlacedPiece { square: 51field, piece: PAWN, },
            PlacedPiece { square: 52field, piece: PAWN, },
            PlacedPiece { square: 53field, piece: PAWN, },
            PlacedPiece { square: 54field, piece: PAWN, },
            PlacedPiece { square: 55field, piece: PAWN, },
            PlacedPiece { square: 56field, piece: ROOK, },
            PlacedPiece { square: 57field, piece: KNIGHT, },
            PlacedPiece { square: 58field, piece: BISHOP, },
            PlacedPiece { square: 59field, piece: QUEEN, },
            PlacedPiece { square: 60field, piece: KING, },
            PlacedPiece { square: 61field, piece: BISHOP, },
            PlacedPiece { square: 62field, piece: KNIGHT, },
            PlacedPiece { square: 63field, piece: ROOK, },
        ];

        let board: Board = Board {
            white: white_pieces,
            black: black_pieces,
            ply: 0field,
            odd_ply: false,
        };

        let game: Game = Game {
            white: self.caller,
            black: opponent,
            board,
            status: ONGOING,
        };

        let state: PlayerState = PlayerState {
            owner: self.caller,
            game,
            bomb,
        };

        let token: GameToken = GameToken {
            owner: opponent,
            game,
        };

        return (state, token);
    }

    transition accept_invite(token: GameToken, bomb: field) -> PlayerState {
        assert(bomb < 64field);
        assert_eq(self.caller, token.game.black);
        assert_eq(token.game.board.ply, 0field);
        assert_eq(token.game.board.odd_ply, false);

        return PlayerState {
            owner: self.caller,
            game: token.game,
            bomb,
        };
    }

    transition accept_move(state: PlayerState, token: GameToken) -> PlayerState {
        assert_eq(state.game.board.ply + 1field, token.game.board.ply);
        assert_eq(state.game.white, token.game.white);
        assert_eq(state.game.black, token.game.black);

        return PlayerState {
            owner: self.caller,
            game: token.game,
            bomb: state.bomb,
        };
    }

    inline is_row1(space: field) -> bool {
        return space < 8field;
    }

    inline is_row2(space: field) -> bool {
        return space >= 8field && space < 16field;
    }

    inline is_row7(space: field) -> bool {
        return space >= 48field && space < 56field;
        
    }

    inline is_row8(space: field) -> bool {
        return space >= 56field;
    }

    inline is_cola(space: field) -> bool {
        return
            space == 0field ||
            space == 8field ||
            space == 16field ||
            space == 24field ||
            space == 32field ||
            space == 40field ||
            space == 48field ||
            space == 56field;
    }

    inline is_colb(space: field) -> bool {
        return
            space == 1field ||
            space == 9field ||
            space == 17field ||
            space == 25field ||
            space == 33field ||
            space == 41field ||
            space == 49field ||
            space == 57field;
    }

    inline is_colg(space: field) -> bool {
        return
            space == 6field ||
            space == 14field ||
            space == 22field ||
            space == 30field ||
            space == 38field ||
            space == 46field ||
            space == 54field ||
            space == 62field;
    }

    inline is_colh(space: field) -> bool {
        return
            space == 7field ||
            space == 15field ||
            space == 23field ||
            space == 31field ||
            space == 39field ||
            space == 47field ||
            space == 55field ||
            space == 63field;
    }

    function go_dir(from: field, dir: field) -> field {
        if from == 64field {
            return 64field;
        }

        let row1: bool = is_row1(from);
        let row8: bool = is_row8(from);
        let cola: bool = is_cola(from);
        let colh: bool = is_colh(from);

        if row1 {
            if dir == DOWN || dir == DOWNLEFT || dir == DOWNRIGHT {
                return 64field;
            }
        }

        if row8 {
            if dir == UP || dir == UPLEFT || dir == UPRIGHT {
                return 64field;
            }
        }

        if cola {
            if dir == LEFT || dir == DOWNLEFT || dir == UPLEFT {
                return 64field;
            }
        }

        if colh {
            if dir == RIGHT || dir == DOWNRIGHT || dir == UPRIGHT {
                return 64field;
            }
        }

        if dir == UP {
            return from + 8field;
        }

        if dir == UPLEFT {
            return from + 7field;
        }

        if dir == LEFT {
            return from + 1field;
        }

        if dir == DOWNLEFT {
            return from - 7field;
        }

        if dir == DOWN {
            return from - 8field;
        }

        if dir == DOWNRIGHT {
            return from - 9field;
        }

        if dir == RIGHT {
            return from - 1field;
        }

        if dir == UPRIGHT {
            return from + 9field;
        }

        assert(false);
        return 0field;
    }

    transition move_common(state: PlayerState, from: field, space_count: field, dir: field) -> (PlayerState, GameToken) {
        assert(space_count > 0field);
        assert(space_count < 8field);

        let is_black: bool = self.caller == state.game.black;
        let row7: bool = is_row7(from);
        let row2: bool = is_row2(from);

        let my_pieces: [PlacedPiece; 16] = state.game.board.white;
        let opp_pieces: [PlacedPiece; 16] = state.game.board.black;
        if is_black {
            let tmp: [PlacedPiece; 16] = my_pieces;
            my_pieces = opp_pieces;
            opp_pieces = tmp;
        }

        let my_piece: field = access(my_pieces, from);

        assert(my_piece == PAWN || my_piece == ROOK || my_piece == BISHOP || my_piece == QUEEN || my_piece == KING);

        if my_piece == KING {
            assert_eq(space_count, 1field);
        }

        let can_capture: bool = true;

        if my_piece == PAWN {
            if is_black {
                if dir == DOWN {
                    assert(space_count <= 2field);
                    can_capture = false;
                    if space_count == 2field {
                        assert(row7);
                    }
                } else {
                    assert_eq(space_count, 1field);
                    assert(dir == DOWNLEFT || dir == DOWNRIGHT);
                }
            } else {
                if dir == UP {
                    assert(space_count <= 2field);
                    can_capture = false;
                    if space_count == 2field {
                        assert(row2);
                    }
                } else {
                    assert_eq(space_count, 1field);
                    assert(dir == UPLEFT || dir == UPRIGHT);
                }
            }
        }

        if dir == UP || dir == LEFT || dir == DOWN || dir == RIGHT {
            assert_neq(my_piece, BISHOP);
        } else {
            assert_neq(my_piece, ROOK);
        }

        let dest: field = from;

        for i: u8 in 0u8..8u8 {
            if space_count > 0field {
                dest = go_dir(dest, dir);
                assert(dest < 64field);
                let piece: field = access(my_pieces, dest);
                assert_eq(piece, EMPTY);
                if space_count > 1field || !can_capture {
                    // Our opponent must also not have a piece here,
                    // unless this is a capturing move and we're at our destination.
                    let opp_piece: field = access(opp_pieces, dest);
                    assert_eq(opp_piece, EMPTY);
                }
                space_count -= 1field;
            }
        }

        let my_new_board: [PlacedPiece; 16] = do_move(my_pieces, from, dest);
        let opp_new_board: [PlacedPiece; 16] = do_move(opp_pieces, dest, 64field);

        let white_board: [PlacedPiece; 16] = my_new_board;
        let black_board: [PlacedPiece; 16] = opp_new_board;
        if is_black {
            let tmp: [PlacedPiece; 16] = black_board;
            black_board = white_board;
            white_board = tmp;
        }

        let board: Board = Board {
            white: white_board,
            black: black_board,
            ply: state.game.board.ply + 1field,
            odd_ply: !state.game.board.odd_ply,
        };

        let game: Game = Game {
            white: state.game.white,
            black: state.game.black,
            board,
            status: ONGOING,
        };

        let bomb: field = state.bomb;
        if bomb == from {
            bomb = dest;
        }

        let new_state: PlayerState = PlayerState {
            owner: self.caller,
            game,
            bomb,
        };

        let opponent: address = self.caller;
        if is_black {
            opponent = state.game.white;
        }

        let token: GameToken = GameToken {
            owner: opponent,
            game,
        };

        return (new_state, token);
    }

    // Up, Up, Right; etc...
    const KNIGHT_MOVE_UUR: field = 0field;
    const KNIGHT_MOVE_URR: field = 1field;
    const KNIGHT_MOVE_DRR: field = 2field;
    const KNIGHT_MOVE_DDR: field = 3field;
    const KNIGHT_MOVE_UUL: field = 4field;
    const KNIGHT_MOVE_ULL: field = 5field;
    const KNIGHT_MOVE_DLL: field = 6field;
    const KNIGHT_MOVE_DDL: field = 7field;

    transition move_knight(state: PlayerState, square: field, move: field) -> (PlayerState, GameToken) {
        let is_black: bool = state.owner == state.game.black;
        assert_eq(is_black, state.game.board.odd_ply);

        let my_pieces: [PlacedPiece; 16] = state.game.board.white;
        let opp_pieces: [PlacedPiece; 16] = state.game.board.black;
        if is_black {
            let tmp: [PlacedPiece; 16] = my_pieces;
            my_pieces = opp_pieces;
            opp_pieces = tmp;
        }

        assert_eq(access(my_pieces, square), KNIGHT);

        let dest: field = 64field;

        let u: field = go_dir(square, UP);
        let uu: field = go_dir(u, UP);
        let ur: field = go_dir(u, RIGHT);
        let ul: field = go_dir(u, LEFT);
        let d: field = go_dir(square, DOWN);
        let dd: field = go_dir(d, DOWN);
        let dr: field = go_dir(d, RIGHT);
        let dl: field = go_dir(d, LEFT);

        let uur: field = go_dir(uu, RIGHT);
        let urr: field = go_dir(ur, RIGHT);
        let uul: field = go_dir(uu, LEFT);
        let ull: field = go_dir(ul, LEFT);
        let ddr: field = go_dir(dd, RIGHT);
        let drr: field = go_dir(dr, RIGHT);
        let ddl: field = go_dir(dd, LEFT);
        let dll: field = go_dir(dl, LEFT);

        if move == KNIGHT_MOVE_UUR {
            dest = uur;
        } else if move == KNIGHT_MOVE_URR {
            dest = urr;
        } else if move == KNIGHT_MOVE_DRR {
            dest = drr;
        } else if move == KNIGHT_MOVE_DDR {
            dest = ddr;
        } else if move == KNIGHT_MOVE_DDL {
            dest = ddl;
        } else if move == KNIGHT_MOVE_DLL {
            dest = dll;
        } else if move == KNIGHT_MOVE_ULL {
            dest = ull;
        } else if move == KNIGHT_MOVE_UUL {
            dest = uul;
        }

        assert_neq(dest, 64field);

        assert_eq(access(my_pieces, dest), EMPTY);

        let my_new_board: [PlacedPiece; 16] = do_move(my_pieces, square, dest);
        let opp_new_board: [PlacedPiece; 16] = do_move(my_pieces, dest, 64field);

        let white_board: [PlacedPiece; 16] = my_new_board;
        let black_board: [PlacedPiece; 16] = opp_new_board;
        if is_black {
            let tmp: [PlacedPiece; 16] = black_board;
            black_board = white_board;
            white_board = tmp;
        }

        let board: Board = Board {
            white: white_board,
            black: black_board,
            ply: state.game.board.ply + 1field,
            odd_ply: !state.game.board.odd_ply,
        };

        let game: Game = Game {
            white: state.game.white,
            black: state.game.black,
            board,
            status: ONGOING,
        };

        let bomb: field = state.bomb;
        if bomb == square {
            bomb = dest;
        }

        let new_state: PlayerState = PlayerState {
            owner: self.caller,
            game,
            bomb,
        };

        let opponent: address = self.caller;
        if is_black {
            opponent = state.game.white;
        }

        let token: GameToken = GameToken {
            owner: opponent,
            game,
        };

        return (new_state, token);
    }

    transition move_destroy(state: PlayerState, square: field) -> (PlayerState, GameToken) {
        let is_black: bool = state.owner == state.game.black;
        assert_eq(is_black, state.game.board.odd_ply);

        let white_board: [PlacedPiece; 16] = state.game.board.white;
        let black_board: [PlacedPiece; 16] = state.game.board.black;

        let white_piece: field = access(white_board, square);
        let black_piece: field = access(black_board, square);
        if is_black {
            assert_neq(black_piece, EMPTY);
        } else {
            assert_neq(white_piece, EMPTY);
        }

        white_board = do_move(white_board, state.bomb, 64field);
        black_board = do_move(black_board, state.bomb, 64field);

        if square == state.bomb {
            let dirs: [field; 8] = [UP, UPLEFT, LEFT, DOWNLEFT, DOWN, DOWNRIGHT, RIGHT, UPRIGHT];
            for i: u8 in 0u8..7u8 {
                let dir: field = dirs[i];
                let adjacent_square: field = go_dir(state.bomb, dir);
                if adjacent_square != 64field {
                    white_board = do_move(white_board, square, 64field);
                    black_board = do_move(black_board, square, 64field);
                }
            }
        }

        let board: Board = Board {
            white: white_board,
            black: black_board,
            ply: state.game.board.ply + 1field,
            odd_ply: !state.game.board.odd_ply,
        };

        let game: Game = Game {
            white: state.game.white,
            black: state.game.black,
            board,
            status: ONGOING,
        };

        let bomb: field = state.bomb;
        if bomb == square {
            bomb = 64field;
        }

        let new_state: PlayerState = PlayerState {
            owner: self.caller,
            game,
            bomb,
        };

        let opponent: address = self.caller;
        if is_black {
            opponent = state.game.white;
        }

        let token: GameToken = GameToken {
            owner: opponent,
            game,
        };

        return (new_state, token);
    }
}
